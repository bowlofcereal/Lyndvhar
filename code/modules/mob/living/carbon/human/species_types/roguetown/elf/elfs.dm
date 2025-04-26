/mob/living/carbon/human/species/elf/wood
	race = /datum/species/elf/wood

/datum/species/elf/wood
	name = "Elf"
	id = "elfw"
	desc = "<b>Elf</b><br>\
	The eldest of the Pantheon’s creations, the elves are one of the most ancient races in Beowricke. Known for being one of the most intelligent and long-living races, they have graceful nature in their stead and are almost exclusively seen in the upper echelons of societies, and in fact many baronies, cities, and even realms (like Greencrest) are made up of an entire elvish nobility. Elves are prideful and believe themselves to be the superior mortal race, however have been intertwined with Humens for so long that it is not uncommon to see a half-elf.<br>"

	skin_tone_wording = "Tribal Identity"

	default_color = "FFFFFF"
	species_traits = list(EYECOLOR,HAIR,FACEHAIR,LIPS,OLDGREY)
	default_features = MANDATORY_FEATURE_LIST
	use_skintones = 1
	skinned_type = /obj/item/stack/sheet/animalhide/human
	disliked_food = NONE
	liked_food = NONE
	possible_ages = ALL_AGES_LIST
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | RACE_SWAP | SLIME_EXTRACT
	limbs_icon_m = 'icons/roguetown/mob/bodies/m/met.dmi'
	limbs_icon_f = 'icons/roguetown/mob/bodies/f/fm.dmi'
	dam_icon = 'icons/roguetown/mob/bodies/dam/dam_male.dmi'
	dam_icon_f = 'icons/roguetown/mob/bodies/dam/dam_female.dmi'
	use_f = TRUE
	soundpack_m = /datum/voicepack/male/elf
	soundpack_f = /datum/voicepack/female/elf
	offset_features = list(
		OFFSET_ID = list(0,2), OFFSET_GLOVES = list(0,0), OFFSET_WRISTS = list(0,1),\
		OFFSET_CLOAK = list(0,2), OFFSET_FACEMASK = list(0,1), OFFSET_HEAD = list(0,1), \
		OFFSET_FACE = list(0,1), OFFSET_BELT = list(0,1), OFFSET_BACK = list(0,2), \
		OFFSET_NECK = list(0,1), OFFSET_MOUTH = list(0,2), OFFSET_PANTS = list(0,2), \
		OFFSET_SHIRT = list(0,2), OFFSET_ARMOR = list(0,2), OFFSET_HANDS = list(0,2), OFFSET_UNDIES = list(0,0), \
		OFFSET_ID_F = list(0,-1), OFFSET_GLOVES_F = list(0,0), OFFSET_WRISTS_F = list(0,0), OFFSET_HANDS_F = list(0,0), \
		OFFSET_CLOAK_F = list(0,0), OFFSET_FACEMASK_F = list(0,-1), OFFSET_HEAD_F = list(0,-1), \
		OFFSET_FACE_F = list(0,-1), OFFSET_BELT_F = list(0,0), OFFSET_BACK_F = list(0,-1), \
		OFFSET_NECK_F = list(0,-1), OFFSET_MOUTH_F = list(0,-1), OFFSET_PANTS_F = list(0,0), \
		OFFSET_SHIRT_F = list(0,0), OFFSET_ARMOR_F = list(0,0), OFFSET_UNDIES_F = list(0,-1), \
		)
	//race_bonus = list(STAT_SPEED = 1)
	enflamed_icon = "widefire"
	organs = list(
		ORGAN_SLOT_BRAIN = /obj/item/organ/brain,
		ORGAN_SLOT_HEART = /obj/item/organ/heart,
		ORGAN_SLOT_LUNGS = /obj/item/organ/lungs,
		ORGAN_SLOT_EYES = /obj/item/organ/eyes,
		ORGAN_SLOT_EARS = /obj/item/organ/ears/elfw,
		ORGAN_SLOT_TONGUE = /obj/item/organ/tongue,
		ORGAN_SLOT_LIVER = /obj/item/organ/liver,
		ORGAN_SLOT_STOMACH = /obj/item/organ/stomach,
		ORGAN_SLOT_APPENDIX = /obj/item/organ/appendix,
		)
	bodypart_features = list(
		/datum/bodypart_feature/hair/head,
		/datum/bodypart_feature/hair/facial,
	)
	customizers = list(
		/datum/customizer/organ/eyes/humanoid,
		/datum/customizer/bodypart_feature/hair/head/humanoid,
		/datum/customizer/bodypart_feature/hair/facial/humanoid,
		/datum/customizer/bodypart_feature/accessory,
		/datum/customizer/bodypart_feature/face_detail,
		/datum/customizer/bodypart_feature/underwear,
		/datum/customizer/organ/testicles/anthro,
		/datum/customizer/organ/penis/anthro,
		/datum/customizer/organ/breasts/human,
		/datum/customizer/organ/vagina/human_anthro,
		)

	body_marking_sets = list(
		/datum/body_marking_set/none,
		/datum/body_marking_set/belly,
		/datum/body_marking_set/bellysocks,
		/datum/body_marking_set/tiger,
		/datum/body_marking_set/tiger_dark,
	)

	body_markings = list(
		/datum/body_marking/flushed_cheeks,
		/datum/body_marking/eyeliner,
		/datum/body_marking/tonage,
		/datum/body_marking/nose,
	)
/datum/species/elf/wood/get_span_language(datum/language/message_language)
	if(!message_language)
		return
//	if(message_language.type == /datum/language/elvish)
//		return list(SPAN_SELF)
//	if(message_language.type == /datum/language/common)
//		return list(SPAN_SELF)
	return message_language.spans

/datum/species/elf/wood/get_skin_list()
	return list(
		"Snow Elf" = SKIN_COLOR_SNOW_ELF,
		"Plains Elf" = SKIN_COLOR_PLAINS_ELF,
		"Crestborne Elf" = SKIN_COLOR_CRESTBORNE_ELF,
		"Valorian Elf" = SKIN_COLOR_VALORIAN_ELF,
		"Lyndhardtian Elf" = SKIN_COLOR_LYNDHARDTIAN_ELF,
		"Moon Elf" = SKIN_COLOR_MOON_ELF,
		"Wood Elf" = SKIN_COLOR_WOOD_ELF,
		"Jungle Elf" = SKIN_COLOR_JUNGLE_ELF,
		"Lotus Elf" = SKIN_COLOR_LOTUS_ELF,
		"Swamp Elf" = SKIN_COLOR_SWAMP_ELF,
		"Sun Elf" = SKIN_COLOR_SUN_ELF,
		"Desert Elf" = SKIN_COLOR_DESERT_ELF,
		"Khazumite Elf"	= SKIN_COLOR_KHAZUMITE_ELF
	)

/datum/species/elf/wood/get_hairc_list()
	return sortList(list(
	"black - oil" = "181a1d",
	"black - cave" = "201616",
	"black - rogue" = "2b201b",
	"black - midnight" = "1d1b2b",

	"blond - pale" = "9d8d6e",
	"blond - dirty" = "88754f",
	"blond - drywheat" = "d5ba7b",
	"blond - strawberry" = "c69b71",

	"white - snow" = "dee9ed",
	"white - ice" = "f4f4f4",

	"brown - mud" = "362e25",
	"brown - oats" = "584a3b",
	"brown - grain" = "58433b",
	"brown - soil" = "48322a",

	"red - berry" = "48322a",
	"red - wine" = "82534c",
	"red - sunset" = "82462b",
	"red - blood" = "822b2b",

	"green - grass" = "2a482c",
	"green - swamp" = "3b482a",
	"green - leaf" = "2f3c2e",
	"green - moss" = "3b3c2a"

	))

/datum/species/elf/wood/random_name(gender,unique,lastname)

	var/randname
	if(unique)
		if(gender == MALE)
			for(var/i in 1 to 10)
				randname = pick( world.file2list("strings/rt/names/elf/elfwm.txt") )
				if(!findname(randname))
					break
		if(gender == FEMALE)
			for(var/i in 1 to 10)
				randname = pick( world.file2list("strings/rt/names/elf/elfwf.txt") )
				if(!findname(randname))
					break
	else
		if(gender == MALE)
			randname = pick( world.file2list("strings/rt/names/elf/elfwm.txt") )
		if(gender == FEMALE)
			randname = pick( world.file2list("strings/rt/names/elf/elfwf.txt") )
	return randname

/datum/species/elf/wood/random_surname()
	return " [pick(world.file2list("strings/rt/names/elf/elfwlast.txt"))]"
