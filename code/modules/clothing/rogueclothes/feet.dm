/obj/item/clothing/shoes/roguetown
	name = "shoes"
	icon = 'icons/roguetown/clothing/feet.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/onmob/feet.dmi'
	desc = ""
	gender = PLURAL
	slot_flags = ITEM_SLOT_SHOES
	body_parts_covered = FEET
	sleeved = 'icons/roguetown/clothing/onmob/feet.dmi'
	sleevetype = "leg"
	bloody_icon_state = "shoeblood"
	equip_delay_self = 30
	resistance_flags = FIRE_PROOF

/obj/item/clothing/shoes/roguetown/boots
	name = "dark boots"
	//dropshrink = 0.75
	color = "#d5c2aa"
	desc = ""
	gender = PLURAL
	icon_state = "blackboots"
	item_state = "blackboots"
	sewrepair = TRUE
	armor = list("blunt" = 30, "slash" = 20, "stab" = 20, "piercing" = 20, "fire" = 0, "acid" = 0)

/obj/item/clothing/shoes/roguetown/boots/ComponentInitialize()
	. = ..()
	AddComponent(/datum/component/storage/concrete/roguetown/boots)

/obj/item/clothing/shoes/roguetown/boots/psydonboots
	name = "psydonian boots"
	desc = "Blacksteel-heeled boots. The leather refuses to be worn down, no matter how far you march through these lands."
	icon_state = "psydonboots"
	item_state = "psydonboots"
	sewrepair = TRUE
	armor = list("blunt" = 50, "slash" = 30, "stab" = 30, "piercing" = 30, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_BLUNT, BCLASS_BITE)
	salvage_amount = 1
	salvage_result = /obj/item/natural/hide/cured
	sellprice = 45

/obj/item/clothing/shoes/roguetown/nobleboot
	name = "noble boots"
	//dropshrink = 0.75
	color = "#d5c2aa"
	desc = "Fine dark leather boots."
	gender = PLURAL
	icon_state = "nobleboots"
	item_state = "nobleboots"
	sewrepair = TRUE
	armor = list("blunt" = 35, "slash" = 30, "stab" = 30, "piercing" = 25, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_BITE)
	salvage_amount = 2
	salvage_result = /obj/item/natural/hide/cured
	sellprice = 30

/obj/item/clothing/shoes/roguetown/nobleboot/thighboots
	name = "thigh boots"
	icon_state = "thighboot"
	icon = 'icons/roguetown/clothing/special/hand.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/special/onmob/hand.dmi'
	sleeved = 'icons/roguetown/clothing/special/onmob/hand.dmi'

/obj/item/clothing/shoes/roguetown/shortboots
	name = "shortboots"
	color = "#d5c2aa"
	desc = ""
	gender = PLURAL
	icon_state = "shortboots"
	item_state = "shortboots"
	sewrepair = TRUE
	salvage_amount = 1
	salvage_result = /obj/item/natural/hide/cured

/obj/item/clothing/shoes/roguetown/ridingboots
	name = "riding boots"
	color = "#d5c2aa"
	desc = ""
	gender = PLURAL
	armor = list("blunt" = 35, "slash" = 35, "stab" = 30, "piercing" = 30, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_BITE)
	icon_state = "ridingboots"
	item_state = "ridingboots"
	sewrepair = TRUE
	salvage_amount = 1
	salvage_result = /obj/item/natural/hide/cured
	sellprice = 30

///obj/item/clothing/shoes/roguetown/ridingboots/Initialize()
//	. = ..()
//	AddComponent(/datum/component/squeak, list('sound/foley/spurs (1).ogg'sound/blank.ogg'=1), 50)

/obj/item/clothing/shoes/roguetown/simpleshoes
	name = "shoes"
	desc = ""
	gender = PLURAL
	icon_state = "simpleshoe"
	item_state = "simpleshoe"
	sewrepair = TRUE
	resistance_flags = null
	color = "#473a30"
	salvage_amount = 1
	salvage_result = /obj/item/natural/hide/cured

/obj/item/clothing/shoes/roguetown/simpleshoes/white
	color = null


/obj/item/clothing/shoes/roguetown/simpleshoes/buckle
	name = "shoes"
	icon_state = "buckleshoes"
	color = null

/obj/item/clothing/shoes/roguetown/simpleshoes/lord
	name = "shoes"
	desc = ""
	gender = PLURAL
	icon_state = "simpleshoe"
	item_state = "simpleshoe"
	resistance_flags = null
	color = "#cbcac9"

/obj/item/clothing/shoes/roguetown/gladiator
	name = "leather sandals"
	desc = ""
	gender = PLURAL
	icon_state = "gladiator"
	item_state = "gladiator"
	sewrepair = TRUE

/obj/item/clothing/shoes/roguetown/sandals
	name = "sandals"
	desc = ""
	gender = PLURAL
	icon_state = "sandals"
	item_state = "sandals"
	sewrepair = TRUE

/obj/item/clothing/shoes/roguetown/hoplite
	name = "ancient sandals"
	desc = "Worn sandals lined with bronze, ready to march ever onwards."
	gender = PLURAL
	icon_state = "aasimarfeet"
	item_state = "aasimarfeet"
	sewrepair = TRUE
	sellprice = 20


/obj/item/clothing/shoes/roguetown/shalal
	name = "babouche"
	desc = ""
	gender = PLURAL
	icon_state = "shalal"
	item_state = "shalal"
	sewrepair = TRUE

/obj/item/clothing/shoes/roguetown/boots/leather
	name = "leather boots"
	//dropshrink = 0.75
	desc = ""
	gender = PLURAL
	icon_state = "leatherboots"
	item_state = "leatherboots"
	sewrepair = TRUE
	armor = list("blunt" = 30, "slash" = 20, "stab" = 20, "piercing" = 20, "fire" = 0, "acid" = 0)
	salvage_amount = 1
	salvage_result = /obj/item/natural/hide/cured
	sellprice = 20

/obj/item/clothing/shoes/roguetown/boots/armor
	name = "plated boots"
	desc = "Boots forged of a set of steel plates to protect your fragile toes."
	body_parts_covered = FEET
	icon_state = "armorboots"
	item_state = "armorboots"
	color = null
	blocksound = PLATEHIT
	resistance_flags = FIRE_PROOF
	max_integrity = 300
	armor = list("blunt" = 95, "slash" = 100, "stab" = 90, "piercing" = 90, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CHOP, BCLASS_CUT, BCLASS_BLUNT, BCLASS_TWIST)
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/steel
	sellprice = 60

/obj/item/clothing/shoes/roguetown/boots/armor/zizo
	max_integrity = 500
	name = "darksteel boots"
	desc = "Plate boots. Called forth from the edge of what should be known. In Her name."
	icon_state = "zizoboots"

/obj/item/clothing/shoes/roguetown/boots/armor/zizo/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, CURSED_ITEM_TRAIT)

/obj/item/clothing/shoes/roguetown/boots/armor/zizo/dropped(mob/living/carbon/human/user)
	. = ..()
	if(QDELETED(src))
		return
	qdel(src)

/obj/item/clothing/shoes/roguetown/boots/armor/matthios
	max_integrity = 500
	name = "gilded boots"
	desc = "Gilded tombs do worm enfold."
	icon_state = "matthiosboots"
	armor = list("blunt" = 90, "slash" = 100, "stab" = 80, "piercing" = 80, "fire" = 0, "acid" = 0)

/obj/item/clothing/shoes/roguetown/boots/armor/matthios/Initialize()
	. = ..()
	ADD_TRAIT(src, TRAIT_NODROP, CURSED_ITEM_TRAIT)

/obj/item/clothing/shoes/roguetown/boots/armor/matthios/dropped(mob/living/carbon/human/user)
	. = ..()
	if(QDELETED(src))
		return
	qdel(src)

/obj/item/clothing/shoes/roguetown/valorian
	name = "valorian leather boots"
	desc = "Boots of outstanding craft, your fragile feet has never felt so protected and comfortable before."
	body_parts_covered = FEET
	icon_state = "fencerboots"
	item_state = "fencerboots"
	blocksound = SOFTHIT
	max_integrity = 200
	armor = list("blunt" = 55, "slash" = 55, "stab" = 50, "piercing" = 35, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_BLUNT, BCLASS_SMASH, BCLASS_CUT, BCLASS_BITE)
	allowed_race = NON_DWARVEN_RACE_TYPES
	salvage_amount = 1
	salvage_result = /obj/item/natural/hide/cured
	sellprice = 50

/obj/item/clothing/shoes/roguetown/boots/armor/iron
	name = "iron plated boots"
	desc = "Boots with iron for added protection."
	body_parts_covered = FEET
	icon_state = "armorironboots"
	item_state = "armorironboots"
	color = null
	blocksound = PLATEHIT
	max_integrity = 200
	armor = list("blunt" = 75, "slash" = 70, "stab" = 70, "piercing" = 70, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CHOP, BCLASS_CUT, BCLASS_BLUNT, BCLASS_TWIST)
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/iron
	sellprice = 35

/obj/item/clothing/shoes/roguetown/jester
	name = "funny shoes"
	do_sound_bell = FALSE
	icon_state = "jestershoes"
	detail_tag = "_detail"
	resistance_flags = null
	sewrepair = TRUE
	detail_color = CLOTHING_WHITE
	color = CLOTHING_AZURE

/obj/item/clothing/shoes/roguetown/jester/update_icon()
	cut_overlays()
	if(get_detail_tag())
		var/mutable_appearance/pic = mutable_appearance(icon(icon, "[icon_state][detail_tag]"))
		pic.appearance_flags = RESET_COLOR
		if(get_detail_color())
			pic.color = get_detail_color()
		add_overlay(pic)

/obj/item/clothing/shoes/roguetown/jester/lordcolor(primary,secondary)
	detail_color = secondary
	color = primary
	update_icon()

/obj/item/clothing/shoes/roguetown/jester/Initialize()
	. = ..()
	AddComponent(/datum/component/item_equipped_movement_rustle, SFX_JINGLE_BELLS, 2)
	if(GLOB.lordprimary)
		lordcolor(GLOB.lordprimary,GLOB.lordsecondary)
	else
		GLOB.lordcolor += src

/obj/item/clothing/shoes/roguetown/jester/Destroy()
	GLOB.lordcolor -= src
	return ..()

/obj/item/clothing/shoes/roguetown/grenzelhoft
	name = "grenzelhoft boots"
	icon_state = "grenzelboots"
	item_state = "grenzelboots"
	sleeved = 'icons/roguetown/clothing/onmob/helpers/stonekeep_merc.dmi'
	armor = list("blunt" = 50, "slash" = 50, "stab" = 50, "piercing" = 40, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_BLUNT, BCLASS_SMASH, BCLASS_CUT, BCLASS_BITE)
	sellprice = 35

/obj/item/clothing/shoes/roguetown/boots/furlinedboots
	name = "fur lined boots"
	desc = "Leather boots lined with fur."
	gender = PLURAL
	icon_state = "furlinedboots"
	item_state = "furlinedboots"
	sewrepair = TRUE
	armor = list("blunt" = 55, "slash" = 50, "stab" = 40, "piercing" = 40, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CUT, BCLASS_BITE, BCLASS_TWIST)
	salvage_amount = 1
	salvage_result = /obj/item/natural/fur
	sellprice = 40

/obj/item/clothing/shoes/roguetown/boots/furlinedanklets
	name = "fur lined anklets"
	desc = "Leather anklets lined with fur, foot remains bare."
	gender = PLURAL
	icon_state = "furlinedanklets"
	item_state = "furlinedanklets"
	sewrepair = TRUE
	armor = list("blunt" = 40, "slash" = 40, "stab" = 20, "piercing" = 40, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_TWIST)
	is_barefoot = TRUE
	salvage_amount = 1
	salvage_result = /obj/item/natural/fur

/obj/item/clothing/shoes/roguetown/boots/clothlinedanklets
	name = "cloth lined anklets"
	desc = "Cloth anklets lined with with fibers, foot remains bare."
	gender = PLURAL
	icon_state = "clothlinedanklets"
	item_state = "furlinedanklets"
	is_barefoot = TRUE
	sewrepair = TRUE
	armor = list("blunt" = 5, "slash" = 5, "stab" = 5, "fire" = 0, "acid" = 0) //Thinks its fair for a piece of cloth and fiber.

/obj/item/clothing/shoes/roguetown/anklets
	name = "golden anklets"
	desc = "Luxurious anklets made of the finest gold. They leave the feet bare while adding an exotic flair."
	gender = PLURAL
	icon_state = "anklets"
	item_state = "anklets"
	is_barefoot = TRUE
	sewrepair = TRUE
	armor = list("blunt" = 5, "slash" = 5, "stab" = 5, "piercing" = 0, "fire" = 0, "acid" = 0)

/obj/item/clothing/shoes/roguetown/valorian/inqboots
	name = "inquisitorial boots"
	desc = "Finely crafted boots, made to stomp out darkness."
	icon_state = "inqboots"
	item_state = "inqboots"


// ----------------- BLACKSTEEL -----------------------

/obj/item/clothing/shoes/roguetown/boots/blacksteel/plateboots
	name = "blacksteel plate boots"
	desc = "Boots forged of durable blacksteel. Unbending, unyielding."
	body_parts_covered = FEET
	icon = 'icons/roguetown/clothing/special/blkknight.dmi'
	mob_overlay_icon = 'icons/roguetown/clothing/special/onmob/blkknight.dmi'
	icon_state = "bkboots"
	item_state = "bkboots"
	color = null
	blocksound = PLATEHIT
	max_integrity = 400
	armor = list("blunt" = 105, "slash" = 100, "stab" = 95, "piercing" = 100, "fire" = 0, "acid" = 0)
	prevent_crits = list(BCLASS_CHOP, BCLASS_CUT, BCLASS_BLUNT, BCLASS_STAB, BCLASS_SMASH, BCLASS_TWIST)
	anvilrepair = /datum/skill/craft/armorsmithing
	smeltresult = /obj/item/ingot/blacksteel
	resistance_flags = FIRE_PROOF
	sellprice = 210
