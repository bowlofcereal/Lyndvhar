/obj/item/clothing/neck/roguetown
	name = "necklace"
	desc = ""
	icon = 'icons/roguetown/clothing/neck.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/neck.dmi'
	bloody_icon_state = "bodyblood"
	alternate_worn_layer = NECK_LAYER
	var/overarmor

/obj/item/clothing/neck/roguetown/MiddleClick(mob/user, params)
	. = ..()
	overarmor = !overarmor
	to_chat(user, span_info("I [overarmor ? "wear \the [src] over my armor" : "wear \the [src] under my armor"]."))
	if(overarmor)
		alternate_worn_layer = NECK_LAYER
	else
		alternate_worn_layer = UNDER_ARMOR_LAYER
	user.update_inv_neck()
	user.update_inv_cloak()
	user.update_inv_armor()
	user.update_inv_shirt()

/obj/item/clothing/neck/roguetown/coif
	name = "coif"
	desc = "A rough leather coif, often worn by laborers. Not very protective, or reassuring."
	icon_state = "coif"
	item_state = "coif"
	flags_inv = HIDEHAIR
	slot_flags = ITEM_SLOT_NECK|ITEM_SLOT_HEAD
	blocksound = SOFTHIT
	body_parts_covered = NECK|HAIR|EARS|HEAD
	armor = list("blunt" = 20, "slash" = 20, "stab" = 25, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_TWIST, BCLASS_BITE)
	adjustable = CAN_CADJUST
	toggle_icon_state = TRUE
	sewrepair = TRUE
	max_integrity = 150

/obj/item/clothing/neck/roguetown/coif/AdjustClothes(mob/user)
	if(loc == user)
		if(adjustable == CAN_CADJUST)
			adjustable = CADJUSTED
			if(toggle_icon_state)
				icon_state = "[initial(icon_state)]_t"
			flags_inv = null
			body_parts_covered = NECK
			if(ishuman(user))
				var/mob/living/carbon/H = user
				H.update_inv_neck()
				H.update_inv_head()
		else if(adjustable == CADJUSTED)
			ResetAdjust(user)
			flags_inv = HIDEHAIR
			if(user)
				if(ishuman(user))
					var/mob/living/carbon/H = user
					H.update_inv_neck()
					H.update_inv_head()

/obj/item/clothing/neck/roguetown/coif/cloth
	name = "padded coif"
	desc = "A simple coif made of cloth. Not very effective armor, but may soften weak blows and keeps the head and neck warm."
	icon_state = "ccoif"
	item_state = "ccoif"
	flags_inv = HIDEHAIR
	slot_flags = ITEM_SLOT_NECK|ITEM_SLOT_HEAD
	blocksound = SOFTHIT
	body_parts_covered = NECK|HAIR|EARS|HEAD
	armor = list("blunt" = 20, "slash" = 20, "stab" = 25, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_TWIST, BCLASS_BITE)
	adjustable = CAN_CADJUST
	toggle_icon_state = TRUE
	sewrepair = TRUE
	max_integrity = 150

/obj/item/clothing/neck/roguetown/coif/cloth/AdjustClothes(mob/user)
	if(loc == user)
		if(adjustable == CAN_CADJUST)
			adjustable = CADJUSTED
			if(toggle_icon_state)
				icon_state = "[initial(icon_state)]_t"
			flags_inv = null
			body_parts_covered = NECK
			if(ishuman(user))
				var/mob/living/carbon/H = user
				H.update_inv_neck()
				H.update_inv_head()
		else if(adjustable == CADJUSTED)
			ResetAdjust(user)
			flags_inv = HIDEHAIR
			if(user)
				if(ishuman(user))
					var/mob/living/carbon/H = user
					H.update_inv_neck()
					H.update_inv_head()

/obj/item/clothing/neck/roguetown/leather
	name = "hardened leather gorget"
	desc = "Sturdy. Durable. Will protect your neck from some good lumbering."
	icon_state = "lgorget"
	slot_flags = ITEM_SLOT_NECK
	blocksound = SOFTHIT
	body_parts_covered = NECK
	armor = list("blunt" = 50, "slash" = 50, "stab" = 50, "piercing" = 50, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST, BCLASS_BITE)
	sewrepair = TRUE
	max_integrity = 150
	salvage_result = /obj/item/natural/hide/cured
	salvage_amount = 1

/obj/item/clothing/neck/roguetown/chaincoif
	name = "chain coif"
	desc = "Interwoven chain links, capable of deflecting cuts and thrusts. The lack of padding makes for poor protection against blunt instruments."
	icon_state = "chaincoif"
	item_state = "chaincoif"
	flags_inv = HIDEHAIR
	armor = list("blunt" = 30, "slash" = 65, "stab" = 70, "piercing" = 75, "fire" = 0, "acid" = 0)

	max_integrity = 200
	resistance_flags = FIRE_PROOF
	slot_flags = ITEM_SLOT_NECK|ITEM_SLOT_HEAD
	body_parts_covered = NECK|HAIR|EARS|HEAD
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BITE, BCLASS_TWIST)
	adjustable = CAN_CADJUST
	toggle_icon_state = TRUE
	blocksound = CHAINHIT
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel

/obj/item/clothing/neck/roguetown/chaincoif/AdjustClothes(mob/user)
	if(loc == user)
		if(adjustable == CAN_CADJUST)
			adjustable = CADJUSTED
			if(toggle_icon_state)
				icon_state = "[initial(icon_state)]_t"
			flags_inv = null
			body_parts_covered = NECK
			if(ishuman(user))
				var/mob/living/carbon/H = user
				H.update_inv_neck()
				H.update_inv_head()
		else if(adjustable == CADJUSTED)
			ResetAdjust(user)
			flags_inv = HIDEHAIR
			if(user)
				if(ishuman(user))
					var/mob/living/carbon/H = user
					H.update_inv_neck()
					H.update_inv_head()

/obj/item/clothing/neck/roguetown/chaincoif/iron
	name = "iron chain coif"
	icon_state = "ichaincoif"
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BITE, BCLASS_TWIST)
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/iron
	max_integrity = 150

/obj/item/clothing/neck/roguetown/chaincoif/full
	name = "full chain coif"
	icon_state = "fchaincoif"
	flags_inv = HIDEEARS|HIDEFACE|HIDEHAIR|HIDEFACIALHAIR
	resistance_flags = FIRE_PROOF
	body_parts_covered = NECK|MOUTH|NOSE|HAIR|EARS|HEAD
	adjustable = CAN_CADJUST
	max_integrity = 300

/obj/item/clothing/neck/roguetown/chaincoif/full/AdjustClothes(mob/user)
	if(loc == user)
		if(adjustable == CAN_CADJUST)
			adjustable = CADJUSTED
			if(toggle_icon_state)
				icon_state = "chaincoif"
			flags_inv = HIDEHAIR
			body_parts_covered = NECK|HAIR|EARS|HEAD
			if(ishuman(user))
				var/mob/living/carbon/H = user
				H.update_inv_neck()
				H.update_inv_head()
		else if(adjustable == CADJUSTED)
			adjustable = CADJUSTED_MORE
			if(toggle_icon_state)
				icon_state = "chaincoif_t"
			flags_inv = null
			body_parts_covered = NECK
			if(ishuman(user))
				var/mob/living/carbon/H = user
				H.update_inv_neck()
				H.update_inv_head()
		else if(adjustable == CADJUSTED_MORE)
			ResetAdjust(user)
		if(ishuman(user))
			var/mob/living/carbon/H = user
			H.update_inv_neck()
			H.update_inv_head()


/obj/item/clothing/neck/roguetown/bevor
	name = "bevor"
	icon_state = "bevor"
	armor = list("blunt" = 100, "slash" = 100, "stab" = 90, "piercing" = 90, "fire" = 0, "acid" = 0)
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	max_integrity = 250
	resistance_flags = FIRE_PROOF
	slot_flags = ITEM_SLOT_NECK
	body_parts_covered = NECK|MOUTH|NOSE
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_SMASH, BCLASS_TWIST, BCLASS_BITE)
	blocksound = PLATEHIT
	armor_class = ARMOR_CLASS_HEAVY //On neck slot, only checked to prevent choke grabs.

/obj/item/clothing/neck/roguetown/gorget
	name = "gorget"
	icon_state = "gorget"
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "piercing" = 80, "fire" = 0, "acid" = 0)
	smeltresult = /obj/item/ingot/iron
	anvilrepair = /datum/skill/craft/armorsmithing
	max_integrity = 150
	resistance_flags = FIRE_PROOF
	slot_flags = ITEM_SLOT_NECK
	body_parts_covered = NECK
	prevent_crits = list(BCLASS_CUT, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST, BCLASS_BITE)
	blocksound = PLATEHIT

/obj/item/clothing/neck/roguetown/fencerguard
	name = "fencer neckguard"
	icon_state = "fencercollar"
	armor = list("blunt" = 90, "slash" = 100, "stab" = 85, "piercing" = 100, "fire" = 0, "acid" = 0)
	smeltresult = /obj/item/ingot/iron
	anvilrepair = /datum/skill/craft/armorsmithing
	max_integrity = 200
	resistance_flags = FIRE_PROOF
	slot_flags = ITEM_SLOT_NECK
	body_parts_covered = NECK
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_CHOP, BCLASS_BLUNT, BCLASS_TWIST)
	blocksound = PLATEHIT
	allowed_race = NON_DWARVEN_RACE_TYPES

/obj/item/clothing/neck/roguetown/gorget/forlorncollar
	name = "zaprixys collar"
	desc = "All lower members of the Zaprixys are bound to a collar to exemplify their service."
	max_integrity = 300
	icon_state = "iwolfcollaralt"
	leashable = TRUE

/obj/item/clothing/neck/roguetown/gorget/oring
	name = "ringed gorget"
	desc = "An iron gorget to protect the neck, this one has an odd ring mounted on the front."
	leashable = TRUE
	icon_state = "ironcollargorget"

/obj/item/clothing/neck/roguetown/gorget/steel
	name ="steel gorget"
	smeltresult = /obj/item/ingot/steel
	max_integrity = 300
	icon_state = "sgorget"

/obj/item/clothing/neck/roguetown/gorget/steel/oring
	desc = "A steel gorget to protect the neck, this one has an odd ring mounted on the front."
	name ="ringed steel gorget"
	leashable = TRUE
	icon_state = "steelcollargorget"

/obj/item/clothing/neck/roguetown/gorget/prisoner/Initialize()
	. = ..()
	name = "cursed collar"
	ADD_TRAIT(src, TRAIT_NO_SELF_UNEQUIP, CURSED_ITEM_TRAIT)

/*
/obj/item/clothing/neck/roguetown/gorget/prisoner/dropped(mob/living/carbon/human/user)
	. = ..()
	if(QDELETED(src))
		return
	qdel(src)
*/

/obj/item/clothing/neck/roguetown/gorget/hoplite // Better than an iron gorget, not quite as good as a steel bervor
	name = "ancient gorget"
	desc = "A heavy collar of bronze alloy, meant to protect the neck."
	icon_state = "aasimarneck"
	item_state = "aasimarneck"
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "piercing" = 80, "fire" = 0, "acid" = 0)
	max_integrity = 250
	smeltresult = null // No bronze ingots yet

/obj/item/clothing/neck/roguetown/psicross
	name = "psycross"
	desc = "'With every broken bone, I swore I lived!'"
	icon_state = "psicross"
	//dropshrink = 0.75
	resistance_flags = FIRE_PROOF
	slot_flags = ITEM_SLOT_NECK|ITEM_SLOT_HIP|ITEM_SLOT_WRISTS
	body_parts_covered = NECK
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT, BCLASS_SMASH, BCLASS_TWIST, BCLASS_BITE)
	sellprice = 10
	experimental_onhip = TRUE
	max_integrity = 20 //Will prevent a first hit crit and nothing else.
	anvilrepair = /datum/skill/craft/armorsmithing
	grid_width = 32
	grid_height = 32

/obj/item/clothing/neck/roguetown/psicross/astrata
	name = "amulet of Astrata"
	desc = "Blessed are those of the Order."
	icon_state = "astrata"

/obj/item/clothing/neck/roguetown/psicross/noc
	name = "amulet of Noc"
	desc = "May the Crescent Moon watch over us all."
	icon_state = "noc"

/obj/item/clothing/neck/roguetown/psicross/abyssor
	name = "amulet of Abyssor"
	desc = "The tides shall fall in Her wake."
	icon_state = "abyssor"

/obj/item/clothing/neck/roguetown/psicross/dendor
	name = "amulet of Dendor"
	desc = "A mark of the madness."
	icon_state = "dendor"

/obj/item/clothing/neck/roguetown/psicross/necra
	name = "amulet of Necra"
	desc = "Let death not be the end."
	icon_state = "necra"

/obj/item/clothing/neck/roguetown/psicross/pestra
	name = "amulet of Pestra"
	desc = "To heal all sick, to cure all disease."
	icon_state = "pestra"

/obj/item/clothing/neck/roguetown/psicross/ravox
	name = "amulet of Ravox"
	desc = "May your battles be many, and your defeats few!"
	icon_state = "ravox"

/obj/item/clothing/neck/roguetown/psicross/malum
	name = "amulet of Malum"
	desc = "The golden hammer strikes true."
	icon_state = "malum"

/obj/item/clothing/neck/roguetown/psicross/eora
	name = "amulet of Eora"
	desc = "May the gardens be fruitful."
	icon_state = "eora"

/obj/item/clothing/neck/roguetown/psicross/wood
	name = "wooden psycross"
	desc = "'A man with nothing can still have faith!'"
	icon_state = "psycross_w"
	item_state = "psycross_w"
	sellprice = 0

/obj/item/clothing/neck/roguetown/psicross/silver
	name = "silver psycross"
	desc = "'The horrors persist, but so do I!'"
	icon_state = "psycross_s"
	item_state = "psycross_s"
	sellprice = 50

/obj/item/clothing/neck/roguetown/psicross/silver/pickup(mob/user)
	. = ..()
	var/mob/living/carbon/human/H = user
	if(!H.mind)
		return
	var/datum/antagonist/vampirelord/V_lord = H.mind.has_antag_datum(/datum/antagonist/vampirelord/)
	var/datum/antagonist/werewolf/W = H.mind.has_antag_datum(/datum/antagonist/werewolf/)
	if(ishuman(H))
		if(H.mind.has_antag_datum(/datum/antagonist/vampirelord/lesser))
			to_chat(H, span_userdanger("I can't pick up the silver, it is my BANE!"))
			H.Knockdown(20)
			H.adjustFireLoss(60)
			H.Paralyze(20)
			H.fire_act(1,5)
		if(V_lord)
			if(V_lord.vamplevel < 4 && !H.mind.has_antag_datum(/datum/antagonist/vampirelord/lesser))
				to_chat(H, span_userdanger("I can't pick up the silver, it is my BANE!"))
				H.Knockdown(10)
				H.Paralyze(10)
		if(W && W.transformed == TRUE)
			to_chat(H, span_userdanger("I can't equip the silver, it is my BANE!"))
			H.Knockdown(20)
			H.Paralyze(20)

/obj/item/clothing/neck/roguetown/psicross/silver/mob_can_equip(mob/living/M, mob/living/equipper, slot, disable_warning = FALSE, bypass_equip_delay_self = FALSE)
	. = ..()
	if(ishuman(M))
		var/mob/living/carbon/human/H = M
		if(!H.mind)
			return TRUE
		var/datum/antagonist/vampirelord/V_lord = H.mind.has_antag_datum(/datum/antagonist/vampirelord/)
		var/datum/antagonist/werewolf/W = H.mind.has_antag_datum(/datum/antagonist/werewolf/)
		if(H.mind.has_antag_datum(/datum/antagonist/vampirelord/lesser))
			to_chat(H, span_userdanger("I can't equip the silver, it is my BANE!"))
			H.Knockdown(20)
			H.adjustFireLoss(60)
			H.Paralyze(20)
			H.fire_act(1,5)
		if(V_lord)
			if(V_lord.vamplevel < 4 && !H.mind.has_antag_datum(/datum/antagonist/vampirelord/lesser))
				to_chat(H, span_userdanger("I can't equip the silver, it is my BANE!"))
				H.Knockdown(10)
				H.Paralyze(10)
		if(W && W.transformed == TRUE)
			to_chat(H, span_userdanger("I can't equip the silver, it is my BANE!"))
			H.Knockdown(20)
			H.Paralyze(20)

/obj/item/clothing/neck/roguetown/psicross/g
	name = "golden psycross"
	desc = "'Purity afloat, for paradise awaits!'"
	icon_state = "psycross_g"
	item_state = "psycross_g"
	//dropshrink = 0.75
	resistance_flags = FIRE_PROOF
	sellprice = 100

/obj/item/clothing/neck/roguetown/talkstone
	name = "talkstone"
	desc = "A curious stone that emblazens with strength, fitted around a small rope for a necklace."
	icon_state = "talkstone"
	item_state = "talkstone"
	//dropshrink = 0.75
	resistance_flags = FIRE_PROOF
	leashable = TRUE
	allowed_race = CLOTHED_RACES_TYPES
	sellprice = 98
	anvilrepair = /datum/skill/craft/armorsmithing

/obj/item/clothing/neck/roguetown/horus
	name = "eye of horuz"
	desc = "A mark of prestige, marking the wearer as a reputable member of the Financial and Merchant's Guild."
	icon_state = "horus"
	//dropshrink = 0.75
	body_parts_covered = NECK
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT, BCLASS_SMASH, BCLASS_TWIST, BCLASS_BITE)
	max_integrity = 20 //Will prevent a first hit crit and nothing else.
	resistance_flags = FIRE_PROOF
	sellprice = 30
	anvilrepair = /datum/skill/craft/armorsmithing


/obj/item/clothing/neck/roguetown/collar
	name = "rope collar"
	desc = "This is for debug and item inheritance. If you are seeing this, bug a coder!"
	icon = 'modular/icons/obj/items/leashes_collars.dmi'
	mob_overlay_icon = 'modular/icons/mob/collars_leashes.dmi'
	icon_state = "collar_rope"
	color = "#d7bb9f"
	allowed_race = CLOTHED_RACES_TYPES
	allowed_sex = list(MALE,FEMALE)
	leashable = TRUE
	do_sound_bell = FALSE
	slot_flags = ITEM_SLOT_NECK
	salvage_amount = 1
	salvage_result = /obj/item/rope

/obj/item/clothing/neck/roguetown/collar/leather
	name = "leather collar"
	desc = "A comfortable collar made of leather."
	icon_state = "leathercollar"
	color = null
	slot_flags = ITEM_SLOT_NECK
	salvage_amount = 1
	salvage_result = /obj/item/natural/hide/cured

/obj/item/clothing/neck/roguetown/collar/leather/cursed/Initialize(mapload)
	. = ..()
	name = "cursed collar"
	resistance_flags = FIRE_PROOF
	ADD_TRAIT(src, TRAIT_NO_SELF_UNEQUIP, CURSED_ITEM_TRAIT)
	clothing_flags = ITEM_SLOT_NECK
	icon = 'modular/icons/obj/items/leashes_collars.dmi'
	mob_overlay_icon = 'modular/icons/mob/collars_leashes.dmi'
	icon_state = "leathercollar"

/*
/obj/item/clothing/neck/roguetown/collar/leather/cursed/dropped(mob/living/carbon/human/user)
	. = ..()
	if(QDELETED(src))
		return
	qdel(src)
*/

/obj/item/clothing/neck/roguetown/collar/leather/bell
	name = "jingly leather collar"
	desc = "A comfortable collar made of leather, this one has a jingly little catbell!"
	icon_state = "catbellcollar"
	slot_flags = ITEM_SLOT_NECK
	do_sound_bell = TRUE
	bell = TRUE
	salvage_result = list(/obj/item/natural/hide/cured = 1, /obj/item/catbell = 1)

/obj/item/clothing/neck/roguetown/collar/leather/bell/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/item_equipped_movement_rustle, SFX_JINGLE_BELLS)

/obj/item/clothing/neck/roguetown/collar/leather/bell/cow
	name = "jingly leather collar"
	desc = "A comfortable collar made of leather, this one has a jingly little cowbell!"
	icon_state = "cowbellcollar"
	slot_flags = ITEM_SLOT_NECK
	salvage_result = list(/obj/item/natural/hide/cured = 1, /obj/item/catbell/cow = 1)
	
/obj/item/clothing/neck/roguetown/shalal
	name = "desert rider medal"
	desc = "An amulet engraved with the emblem of the Zybantu."
	icon_state = "shalal"
	//dropshrink = 0.75
	body_parts_covered = NECK
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT, BCLASS_SMASH, BCLASS_TWIST, BCLASS_BITE)
	max_integrity = 20 //Will prevent a first hit crit and nothing else.
	resistance_flags = FIRE_PROOF
	sellprice = 15
	anvilrepair = /datum/skill/craft/armorsmithing

/obj/item/clothing/neck/roguetown/ornateamulet
	name = "Ornate Amulet"
	desc = "A beautiful amulet, made of solid gold."
	icon_state = "ornateamulet"
	//dropshrink = 0.75
	body_parts_covered = NECK
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT, BCLASS_SMASH, BCLASS_TWIST, BCLASS_BITE)
	max_integrity = 60
	resistance_flags = FIRE_PROOF
	sellprice = 100
	anvilrepair = /datum/skill/craft/armorsmithing

/obj/item/clothing/neck/roguetown/ornateamulet/noble
	var/choicename = FALSE
	name = "Heirloom Amulet"
	desc = "An ornate amulet representing a prestigious noble house."
	slot_flags = ITEM_SLOT_NECK|ITEM_SLOT_WRISTS|ITEM_SLOT_HIP
	sellprice = 10

/obj/item/clothing/neck/roguetown/ornateamulet/noble/attack_right(mob/user)
	if(choicename)
		return
	var/current_time = world.time
	var/namechoice = input(user, "Input a new name", "Rename Object")
	if(namechoice)
		name = namechoice
		choicename = TRUE
	else
		return
	if(world.time > (current_time + 30 SECONDS))
		return

/obj/item/clothing/neck/roguetown/skullamulet
	name = "Skull Amulet"
	desc = "Gold shaped into the form of a skull, made into an amulet."
	icon_state = "skullamulet"
	//dropshrink = 0.75
	body_parts_covered = NECK
	prevent_crits = list(BCLASS_CUT, BCLASS_STAB, BCLASS_BLUNT, BCLASS_SMASH, BCLASS_TWIST, BCLASS_BITE)
	max_integrity = 60
	resistance_flags = FIRE_PROOF
	sellprice = 100
	anvilrepair = /datum/skill/craft/armorsmithing

/obj/item/clothing/neck/roguetown/psicross/naledi
	name = "khazumian bracelet"
	desc = "A peculiar icon of worship from a foreign land. Forming a cross in a circular ring, this bracelet embodies the Khazumian belief in Khuzker."
	icon_state = "psybracelet"
	item_state = null

/obj/item/clothing/neck/roguetown/elfears
	name = "elfear necklace"
	desc = "A grim necklace made to show off the wearer's macabre collection of cut off elf ears."
	icon_state = "elfears"

/obj/item/clothing/neck/roguetown/menears
	name = "menear necklace"
	desc = "A grim necklace made to show off the wearer's macabre collection of cut off humen ears."
	icon_state = "menears"

/obj/item/clothing/neck/roguetown/mercmedal/zybatine
	name = "desert rider chain"
	desc = "A small, gilded neck-chain used to identify fellow slavers."
	icon_state = "goldchain"

/obj/item/clothing/neck/roguetown/mercmedal/grenzelhoft
	name = "grenzelhoft gryphon of valor"
	desc = "The fearsome beast of the Black Empire's heraldry, cast in brass. These service awards have lost much of their value since mercenaries started receiving them."
	icon_state = "gryphon"

/obj/item/clothing/neck/roguetown/mercmedal/underdweller
	name = "underdweller compass"
	desc = "A non-functional compass carried by seasoned miners as keepsake. Greed will light the way."
	icon_state = "compass"

/obj/item/clothing/neck/roguetown/mercmedal/blackoak
	name = "black oak seedpouch"
	desc = "A dark acorn resting in a canvas pouch. May your final resting place be the one life you give back to this world."
	icon_state = "seedpouch"

/obj/item/clothing/neck/roguetown/mercmedal/steppesman
	name = "steppe effigy"
	desc = "This straw doll is claimed to be a representation of Astrata. In truth, a homage to the steppe's wild spirits of yore."
	icon_state = "effigy"

/obj/item/clothing/neck/roguetown/mercmedal/jannisary
	name = "jannisary medal"
	desc = "Proof of veterancy among the Forvheipal Janissaries."
	icon_state = "dogmedal"

/*/obj/item/clothing/neck/roguetown/collar
	name = "collar"
	desc = "A band of leather which signifies bondage to another."
	icon_state = "collar"
	item_state = "collar"
	resistance_flags = FIRE_PROOF
	dropshrink = 0.5

/obj/item/clothing/neck/roguetown/collar/bell_collar
	name = "bell collar"
	desc = "A band of leather with a bell protects the local zads from the local catfolk."
	icon_state = "catbellcollar"
	item_state = "catbellcollar"

/obj/item/clothing/neck/roguetown/collar/bell_collar/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/item_equipped_movement_rustle, SFX_JINGLE_BELLS)*/
