/datum/advclass/mercenary/anthrax
	name = "Anthrax"
	tutorial = "The brutal nature of Drow society is mostly unknown to outsiders, however sometimes excursions from below are sent outwards- whether good or bad. You are a member of the Anthraxi order, a militant society of mercenary Dark Elves that sell themselves to the highest bidder. Known throughout Llewyn as professional torturers and killers, your reputation is one shrouded in darkness and efficiency. Show these aboveground dwellers your craft."
	allowed_sexes = list(MALE, FEMALE)
	allowed_races = list(/datum/species/elf/dark)
	outfit = /datum/outfit/job/roguetown/mercenary/anthrax
	category_tags = list(CTAG_MERCENARY)
	traits_applied = list(TRAIT_OUTLANDER)
	maximum_possible_slots = 5

	cmode_music = 'sound/music/combat_delf.ogg'

/datum/outfit/job/roguetown/mercenary/anthrax/pre_equip(mob/living/carbon/human/H)
	..()

	belt = /obj/item/storage/belt/rogue/leather/black
	pants = /obj/item/clothing/under/roguetown/trou/shadowpants
	shoes = /obj/item/clothing/shoes/roguetown/boots
	backl = /obj/item/storage/backpack/rogue/satchel
	backpack_contents = list(/obj/item/storage/belt/rogue/pouch/coins/poor, /obj/item/rogueweapon/huntingknife/idagger/steel/dirk, /obj/item/roguekey/mercenary)

	if(H.mind)
		H.mind.adjust_skillrank(/datum/skill/misc/swimming, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/climbing, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/athletics, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/wrestling, 3, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/unarmed, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/combat/knives, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/reading, 2, TRUE)
		H.mind.adjust_skillrank(/datum/skill/misc/riding, 3, TRUE)

		ADD_TRAIT(H, TRAIT_STEELHEARTED, TRAIT_GENERIC)
		H.verbs |= /mob/living/carbon/human/proc/torture_victim //Professional torturers, no?

		if(H.gender == FEMALE) //Melee defense-oriented brute, heavy lean towards non-lethal takedowns and capture.
			mask = /obj/item/clothing/mask/rogue/facemask/shadowfacemask
			neck = /obj/item/clothing/neck/roguetown/gorget
			gloves = /obj/item/clothing/gloves/roguetown/chain/iron/shadowgauntlets
			wrists = /obj/item/clothing/wrists/roguetown/bracers/leather
			armor = /obj/item/clothing/suit/roguetown/armor/cuirass/iron/shadowplate
			backr = /obj/item/rogueweapon/shield/tower/spidershield
			beltr = /obj/item/rogueweapon/whip/spiderwhip

			H.mind.adjust_skillrank(/datum/skill/combat/maces, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/whipsflails, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/shields, 3, TRUE)

			H.change_stat("strength", 2) //Dark elf women.
			H.change_stat("constitution", 1)
			H.change_stat("endurance", 1)
			H.change_stat("intelligence", -1) //Reliant on the male counterpart for the more crafty side.
			H.change_stat("speed", -1)

			ADD_TRAIT(H, TRAIT_MEDIUMARMOR, TRAIT_GENERIC)

		if(H.gender == MALE) //Squishy hit-and-runner assassin.
			mask = /obj/item/clothing/mask/rogue/shepherd/shadowmask
			neck = /obj/item/clothing/neck/roguetown/chaincoif/iron
			cloak = /obj/item/clothing/cloak/half/shadowcloak
			gloves = /obj/item/clothing/gloves/roguetown/fingerless/shadowgloves
			armor = /obj/item/clothing/suit/roguetown/armor/gambeson/shadowrobe
			shirt = /obj/item/clothing/suit/roguetown/shirt/shadowshirt
			beltr = /obj/item/quiver/arrows
			beltl = /obj/item/rogueweapon/sword/sabre/stalker
			backr = /obj/item/gun/ballistic/revolver/grenadelauncher/bow/recurve 

			H.mind.adjust_skillrank(/datum/skill/misc/climbing, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/sneaking, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/lockpicking, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/bows, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/crossbows, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/combat/swords, 3, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/sewing, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/misc/medicine, 2, TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/crafting, 1, TRUE)
			H.mind.adjust_skillrank(/datum/skill/craft/cooking, 1, TRUE) //Spread-out support skills, but inferior to Steppesman/Boltslinger.
			H.mind.adjust_skillrank(/datum/skill/craft/traps, 3, TRUE)

			H.change_stat("speed", 2) //Speedier than a Steppesman, but not as tough or damaging.
			H.change_stat("endurance", 1)

			ADD_TRAIT(H, TRAIT_DODGEEXPERT, TRAIT_GENERIC)

