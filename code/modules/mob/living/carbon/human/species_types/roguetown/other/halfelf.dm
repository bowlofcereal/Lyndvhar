/mob/living/carbon/human/species/human/halfelf
	race = /datum/species/human/halfelf

/datum/species/human/halfelf
	name = "Half-Elf"
	id = "helf"
	desc = "<b>Half Elf</b><br>\
	The children of an Elf and a Humen, most conservative minds frown upon such a union. Half-Elves are distinguishable by their elf-ears yet humen appearance and features. However with the lack of a true cultural identity and pillar, they are often found either acting more as an elf or more as a humen. They are the embodiment of a “melting pot” of cultures, where the identity of humen and elf is blended into one.<br>" 

	skin_tone_wording = "Identity"
	default_color = "FFFFFF"
	species_traits = list(EYECOLOR,HAIR,FACEHAIR,LIPS,STUBBLE,OLDGREY)
	inherent_traits = list(TRAIT_NOMOBSWAP)
	default_features = MANDATORY_FEATURE_LIST
	use_skintones = 1
	possible_ages = ALL_AGES_LIST
	skinned_type = /obj/item/stack/sheet/animalhide/human
	disliked_food = NONE
	liked_food = NONE
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | RACE_SWAP | SLIME_EXTRACT
	limbs_icon_m = 'icons/roguetown/mob/bodies/m/mt.dmi'
	limbs_icon_f = 'icons/roguetown/mob/bodies/f/fm.dmi'
	dam_icon = 'icons/roguetown/mob/bodies/dam/dam_male.dmi'
	dam_icon_f = 'icons/roguetown/mob/bodies/dam/dam_female.dmi'
	soundpack_m = /datum/voicepack/male
	soundpack_f = /datum/voicepack/female
	offset_features = list(
		OFFSET_ID = list(0,1), OFFSET_GLOVES = list(0,1), OFFSET_WRISTS = list(0,1),\
		OFFSET_CLOAK = list(0,1), OFFSET_FACEMASK = list(0,1), OFFSET_HEAD = list(0,1), \
		OFFSET_FACE = list(0,1), OFFSET_BELT = list(0,1), OFFSET_BACK = list(0,1), \
		OFFSET_NECK = list(0,1), OFFSET_MOUTH = list(0,1), OFFSET_PANTS = list(0,1), \
		OFFSET_SHIRT = list(0,1), OFFSET_ARMOR = list(0,1), OFFSET_HANDS = list(0,1), OFFSET_UNDIES = list(0,1), \
		OFFSET_ID_F = list(0,-1), OFFSET_GLOVES_F = list(0,0), OFFSET_WRISTS_F = list(0,0), OFFSET_HANDS_F = list(0,0), \
		OFFSET_CLOAK_F = list(0,0), OFFSET_FACEMASK_F = list(0,-1), OFFSET_HEAD_F = list(0,-1), \
		OFFSET_FACE_F = list(0,-1), OFFSET_BELT_F = list(0,-1), OFFSET_BACK_F = list(0,-1), \
		OFFSET_NECK_F = list(0,-1), OFFSET_MOUTH_F = list(0,-1), OFFSET_PANTS_F = list(0,0), \
		OFFSET_SHIRT_F = list(0,0), OFFSET_ARMOR_F = list(0,0), OFFSET_UNDIES_F = list(0,-1), \
		)
	//race_bonus = list(STAT_PERCEPTION = 1, STAT_CONSTITUTION = 1)
	enflamed_icon = "widefire"
	organs = list(
		ORGAN_SLOT_BRAIN = /obj/item/organ/brain,
		ORGAN_SLOT_HEART = /obj/item/organ/heart,
		ORGAN_SLOT_LUNGS = /obj/item/organ/lungs,
		ORGAN_SLOT_EYES = /obj/item/organ/eyes/halfelf,
		ORGAN_SLOT_EARS = /obj/item/organ/ears/elf,
		ORGAN_SLOT_TONGUE = /obj/item/organ/tongue,
		ORGAN_SLOT_LIVER = /obj/item/organ/liver,
		ORGAN_SLOT_STOMACH = /obj/item/organ/stomach,
		ORGAN_SLOT_APPENDIX = /obj/item/organ/appendix,
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
		
	)
	languages = list(
		/datum/language/common,
		/datum/language/elvish
	)

/*
/datum/species/human/halfelf/on_species_gain(mob/living/carbon/literally_him, datum/species/old_species)
	..()
	languages(literally_him)
*/

/datum/species/human/halfelf/get_skin_list()
	return list(
		"Jungle-Atvergian" = SKIN_COLOR_JUNGLE_ATVERGIAN,     // Was Timber-Gronn
		"Zybantia-Valorian" = SKIN_COLOR_ZYBANTIA_VALORIAN,    // Was Giza-Azure
		"Moon-Dunargi" = SKIN_COLOR_MOON_DUNARGI,         // Was Walnut-Stine
		"Plains-Calmirixian" = SKIN_COLOR_PLAINS_CALMIRIXIAN,   // Was Etrustcan-Dandelion
		"Khazumite-Borne" = SKIN_COLOR_KHAZUMITE_BORNE,       // Was Naledi-Born
		"Salvum-Lotus" = SKIN_COLOR_SALVUM_LOTUS,         // Was Kaze-Lotus
		"Grenzel-Lyndhardtian" = SKIN_COLOR_GRENZEL_RHAENVAL, // Was Grenzel-Azuria (using GRENZEL_RHAENVAL define)
		"Plains-Atvergian" = SKIN_COLOR_PLAINS_ATVERGIAN,     // Was Etrusca-Lirvas
		"Bastardborne" = SKIN_COLOR_BASTARDBORNE,         // Was Free Roamers
		"Crestfallen" = SKIN_COLOR_CRESTFALLEN,          // Was Avar Borne
		"Zybantia-Khazumite" = SKIN_COLOR_ZYBANTIA_KHAZUMITE,   // Was Shalvine Roamer
		"Grenzel-Desert" = SKIN_COLOR_GRENZEL_DESERT,       // Was Lalve-Steppes
		"Khazum-Valorian" = SKIN_COLOR_KHAZUM_VALORIAN,      // Was Naledi-Otava
		"Grenzel-Rhaenval" = SKIN_COLOR_GRENZEL_RHAENVAL,     // Was Grezel-Avar
		"Lynd-Khazumite" = SKIN_COLOR_LYND_KHAZUMITE        // Was Hammer-Gronn
	)

/*
/datum/species/human/halfelf/proc/languages(mob/living/carbon/human/literally_him)
	if(literally_him.skin_tone == SKIN_COLOR_KHAZUMITE_BORNE)
		literally_him.grant_language(/datum/language/celestial)
*/

/datum/species/human/halfelf/get_hairc_list()
	return sortList(list(
	"black - oil" = "181a1d",
	"black - cave" = "201616",
	"black - rogue" = "2b201b",
	"black - midnight" = "1d1b2b",

	"brown - mud" = "362e25",
	"brown - oats" = "584a3b",
	"brown - grain" = "58433b",
	"brown - soil" = "48322a",

	"red - berry" = "48322a",
	"red - wine" = "82534c",
	"red - sunset" = "82462b",
	"red - blood" = "822b2b",

	"blond - pale" = "9d8d6e",
	"blond - dirty" = "88754f",
	"blond - drywheat" = "8f8766",
	"blond - strawberry" = "977033"

	))

/datum/species/human/halfelf/random_name(gender,unique,lastname)
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
	randname += " Halfelven"
	return randname

/datum/species/human/halfelf/random_surname()
	return ""

