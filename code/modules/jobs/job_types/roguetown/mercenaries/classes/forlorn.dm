/datum/advclass/mercenary/forlorn
	name = "Forvheipal Janissary"
	tutorial = "A Janissary from the strange and enigmatic kingdom in Yoheon, Forvheipal. The Janissary are an elite sellsword contingent of the Zapyrixian Order- mostly made up of Lupians and Vulpkians. They will do any work for the highest bidder- and thus you will, too."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS
	outfit = /datum/outfit/job/roguetown/mercenary/forlorn
	min_pq = 2
	cmode_music = 'sound/music/combat_blackstar.ogg'
	traits_applied = list(TRAIT_OUTLANDER)
	category_tags = list(CTAG_MERCENARY)

/datum/outfit/job/roguetown/mercenary/forlorn/pre_equip(mob/living/carbon/human/H)
	..()

	// CLASS ARCHETYPES
	H.adjust_blindness(-3)
	var/classes = list("Forvheipal Light Infantry","Forvheipal Sharpshooter")
	var/classchoice = input("Choose your archetypes", "Available archetypes") as anything in classes

	switch(classchoice)
		if("Forvheipal Light Infantry")
			H.set_blindness(0)
			to_chat(H, span_warning("The Forvheipal Light Infantry are the Zapyrixian Order's elite close combat units, wielding warhammer and shield."))
			H.mind.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/climbing, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/bows, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/swords, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/maces, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/polearms, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/riding, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/shields, 2, TRUE)
			ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)
			ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC)
			H.change_stat("strength", 2)
			H.change_stat("endurance", 2)
			H.change_stat("constitution", 1) 
			shoes = /obj/item/clothing/shoes/roguetown/boots
			neck = /obj/item/clothing/neck/roguetown/gorget/forlorncollar
			head = /obj/item/clothing/head/roguetown/helmet/heavy/volfplate
			pants = /obj/item/clothing/under/roguetown/tights/black
			gloves = /obj/item/clothing/gloves/roguetown/leather/black
			belt = /obj/item/storage/belt/rogue/leather
			shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/lord
			armor = /obj/item/clothing/suit/roguetown/armor/brigandine/light
			beltr = /obj/item/storage/belt/rogue/pouch/coins/poor
			beltl = /obj/item/rogueweapon/mace/warhammer/steel
			backr = /obj/item/storage/backpack/rogue/satchel
			backl = /obj/item/rogueweapon/shield/heater
			backpack_contents = list(/obj/item/rogueweapon/huntingknife, /obj/item/roguekey/mercenary, /obj/item/clothing/neck/roguetown/mercmedal/jannisary)
		if("Forvheipal Sharpshooter")
			H.set_blindness(0)
			to_chat(H, span_warning("The Forvheipal Sharpshooters are the Zapyrixian Order's elite ranged combat units, wielding crossbow and relying on their agility to avoid blows."))
			H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 4, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/swords, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/shields, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/sewing, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/swimming, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/reading, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/climbing, 4, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/tracking, 3, TRUE)
			ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)
			ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC)
			H.change_stat("perception", 3)
			H.change_stat("speed", 2)
			shoes = /obj/item/clothing/shoes/roguetown/boots
			neck = /obj/item/clothing/neck/roguetown/gorget/forlorncollar
			head = /obj/item/clothing/head/roguetown/helmet/heavy/zadhelm
			pants = /obj/item/clothing/under/roguetown/tights/black
			gloves = /obj/item/clothing/gloves/roguetown/leather/black
			wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
			belt = /obj/item/storage/belt/rogue/leather
			shirt = /obj/item/clothing/suit/roguetown/armor/gambeson/councillor
			armor = /obj/item/clothing/suit/roguetown/armor/leather/heavy/coat/black
			beltr = /obj/item/storage/belt/rogue/pouch/coins/poor
			beltl = /obj/item/quiver/bolts
			backr = /obj/item/storage/backpack/rogue/satchel
			backl = /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow
			backpack_contents = list(/obj/item/rogueweapon/huntingknife/idagger/steel, /obj/item/roguekey/mercenary, /obj/item/clothing/neck/roguetown/mercmedal/jannisary)
