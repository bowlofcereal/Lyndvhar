/datum/keybinding/looc
	category = CATEGORY_CLIENT
	weight = WEIGHT_HIGHEST
	hotkey_keys = list("Y")
	name = "LOOC"
	full_name = "LOOC Chat"
	description = "Local OOC Chat."

/datum/keybinding/looc/down(client/user)
	// --- NEW CHECK FOR HOTKEY ---
	// Check the global toggle before proceeding
	if (!GLOB.looc_enabled)
		to_chat(user, "<span class='warning'>LOOC is currently disabled by server administrators.</span>")
		return TRUE // Stop processing the keypress if disabled
	// --- END CHECK ---

	// Original action (only runs if LOOC is enabled)
	user.get_looc()
	return TRUE

// Proc called by the keybinding (if enabled) and the verb
/client/proc/get_looc()
	var/msg = input(src, null, "looc \"text\"") as text|null
	do_looc(msg)

// Verb definition (assuming it's here or nearby)
/client/verb/looc(msg as text)
	set name = "LOOC"
	set desc = "Local OOC, seen only by those in view."
	set category = "OOC"

	do_looc(msg)


// The main LOOC logic proc
/client/proc/do_looc(msg as text)

	// --- EXISTING TOGGLE CHECK ---
	// This check remains to catch direct calls or verb usage
	if(!GLOB.looc_enabled) // Use GLOB access
		to_chat(usr, "<span class='warning'>LOOC is currently disabled.</span>")
		return
	// --- END OF TOGGLE CHECK ---

	// ... (rest of the do_looc proc remains unchanged) ...

	if(GLOB.say_disabled)	//This is here to try to identify lag problems
		to_chat(usr, "<span class='danger'> Speech is currently admin-disabled.</span>")
		return

	if(!mob)
		return

	msg = copytext_char(sanitize(msg), 1, MAX_MESSAGE_LEN)
	if(!msg)
		return

	if(!(prefs.chat_toggles & CHAT_OOC))
		to_chat(src, "<span class='danger'> You have OOC muted.</span>")
		return

	if(!holder) // Assuming 'holder' refers to an admin holder datum/object
		if(findtext(msg, "byond://"))
			to_chat(src, "<B>Advertising other servers is not allowed.</B>")
			log_admin("[key_name(src)] has attempted to advertise in LOOC: [msg]")
			return


//	msg = emoji_parse(msg) // Uncomment if your codebase uses this

	mob.log_talk(msg, LOG_LOOC)

	var/prefix = "LOOC"
	// Use view() for potentially better performance and clarity over range() for simple visibility
	for(var/mob/M in view(7, src.mob)) // Check visibility from the mob, not the client
		var/client/C = M.client
		if(!C || C == src) // Skip self and mobs without clients
			continue
		// Removed isobserver check here, as view() often handles ghosts/observers depending on implementation
		// Add it back if view() in your codebase includes observers you want to exclude: if(isobserver(M)) continue

		if(C.prefs.chat_toggles & CHAT_OOC)
			// Use message_contents_formatted for consistency if your codebase uses it
			to_chat(C, "<font color='#6699CC'><b><span class='prefix'>[prefix]:</span> <EM>[src.mob.name]:</EM> <span class='message'>[msg]</span></b></font>")

	// Send to self last
	to_chat(usr, "<font color='#6699CC'><b><span class='prefix'>[prefix]:</span> <EM>[src.mob.name]:</EM> <span class='message'>[msg]</span></b></font>")

