/datum/advclass/knave //sneaky bastards - ranged classes of two flavors archers and rogues
	name = "Knave"
	tutorial = "Not all followers of Matthios take by force. Thieves, poachers, and ne'er-do-wells of all forms steal from others from the shadows, long gone before their marks realize their misfortune."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = RACES_ALL_KINDS
	outfit = /datum/outfit/job/roguetown/bandit/knave
	category_tags = list(CTAG_BANDIT)
	cmode_music = 'sound/music/combat_bandit2.ogg'

/datum/outfit/job/roguetown/bandit/knave/pre_equip(mob/living/carbon/human/H)
	..()
	H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/swords, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/bows, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/crafting, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/carpentry, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/athletics, 2, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/climbing, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/sewing, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/medicine, 1, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/stealing, 5, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/lockpicking, 4, TRUE)
	H.mind.adjust_skillrank(/datum/skill/craft/traps, 3, TRUE)
	H.mind.adjust_skillrank(/datum/skill/misc/tracking, 3, TRUE)
	belt = /obj/item/storage/belt/rogue/leather
	pants = /obj/item/clothing/under/roguetown/trou/leather
	shirt = /obj/item/clothing/suit/roguetown/shirt
	shoes = /obj/item/clothing/shoes/roguetown/boots
	mask = /obj/item/clothing/mask/rogue/facemask/steel
	neck = /obj/item/clothing/neck/roguetown/coif
	armor = /obj/item/clothing/suit/roguetown/armor/leather
	id = /obj/item/mattcoin
	H.change_stat("perception", 2)
	H.change_stat("speed", 2)
	ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)
	H.adjust_blindness(-3)
	var/weapons = list("Crossbow & Dagger", "Bow & Sword")
	var/weapon_choice = input("Choose your weapon.", "TAKE UP ARMS") as anything in weapons
	H.set_blindness(0)
	switch(weapon_choice)
		if("Crossbow & Dagger")
			backl= /obj/item/gun/ballistic/revolver/grenadelauncher/crossbow 
			beltr = /obj/item/quiver/bolts
			head = /obj/item/clothing/head/roguetown/menacing/bandit
			cloak = /obj/item/clothing/cloak/raincloak/brown
			beltl = /obj/item/rogueweapon/huntingknife/idagger/steel
			backr = /obj/item/storage/backpack/rogue/satchel
			backpack_contents = list(
						/obj/item/needle/thorn = 1,
						/obj/item/natural/cloth = 1,
						/obj/item/lockpickring/mundane = 1,
						/obj/item/flashlight/flare/torch = 1,
						) 
			H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/knives, 1, TRUE)
		if("Bow & Sword") 
			backl= /obj/item/gun/ballistic/revolver/grenadelauncher/bow/recurve
			beltl = /obj/item/rogueweapon/sword/iron/short
			beltr = /obj/item/quiver/arrows
			head = /obj/item/clothing/head/roguetown/helmet/leather/volfhelm 
			backr = /obj/item/storage/backpack/rogue/satchel
			backpack_contents = list(
						/obj/item/needle/thorn = 1,
						/obj/item/natural/cloth = 1,
						/obj/item/restraints/legcuffs/beartrap = 2,
						/obj/item/flashlight/flare/torch = 1,
						) 
			H.mind.adjust_skillrank(/datum/skill/combat/bows, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/sword, 1, TRUE)
