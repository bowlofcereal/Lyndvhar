/client/proc/toggle_looc()
	set name = "Toggle LOOC"
	set category = "Server" // Or "Admin" if you prefer
	set desc = "Enables or disables Local OOC (LOOC) chat for all players."

	GLOB.looc_enabled = !GLOB.looc_enabled 

	var/status = GLOB.looc_enabled ? "ENABLED" : "DISABLED" 
	var/log_msg = "LOOC has been [status] by [key_name(usr)]."

	/proc/togglelooc(toggle = null)
	if(toggle != null) //if we're specifically en/disabling ooc
		if(toggle != GLOB.ooc_allowed)
			GLOB.looc_allowed = toggle
		else
			return
	else //otherwise just toggle it
		GLOB.looc_allowed = !GLOB.looc_allowed
	message_admins("<B>The LOOC channel has been globally [GLOB.looc_allowed ? "enabled" : "disabled"].</B>")

	// Log the action and inform admins
	log_admin(log_msg)
	message_admins(log_msg) // Use message_admins or equivalent admin announcement function
