//intent datums ฅ^•ﻌ•^ฅ

/datum/intent/spear/thrust
	name = "thrust"
	blade_class = BCLASS_STAB
	attack_verb = list("thrusts")
	animname = "stab"
	icon_state = "instab"
	reach = 2
	chargetime = 3
	warnie = "mobwarning"
	hitsound = list('sound/combat/hits/bladed/genstab (1).ogg', 'sound/combat/hits/bladed/genstab (2).ogg', 'sound/combat/hits/bladed/genstab (3).ogg')
	penfactor = 45
	item_d_type = "stab"

/datum/intent/spear/thrust/strong
	penfactor = 65
	chargetime = 6

/datum/intent/spear/bash
	name = "bash"
	blade_class = BCLASS_BLUNT
	icon_state = "inbash"
	attack_verb = list("bashes", "strikes")
	penfactor = 10
	damfactor = 0.8
	item_d_type = "blunt"

/datum/intent/spear/cut
	name = "cut"
	blade_class = BCLASS_CUT
	attack_verb = list("cuts", "slashes")
	icon_state = "incut"
	damfactor = 0.8
	hitsound = list('sound/combat/hits/bladed/genslash (1).ogg', 'sound/combat/hits/bladed/genslash (2).ogg', 'sound/combat/hits/bladed/genslash (3).ogg')
	reach = 2
	item_d_type = "slash"

/datum/intent/spear/chop
	name = "chop"
	icon_state = "inchop"
	attack_verb = list("chops", "hacks")
	animname = "chop"
	blade_class = BCLASS_CHOP
	hitsound = list('sound/combat/hits/bladed/genchop (1).ogg', 'sound/combat/hits/bladed/genchop (2).ogg', 'sound/combat/hits/bladed/genchop (3).ogg')
	penfactor = 30
	reach = 2
	swingdelay = 5
	chargetime = 4
	damfactor = 1.1
	item_d_type = "slash"

/datum/intent/spear/chop/glaive
	name = "cleave"
	attack_verb = list("cleaves", "splits")
	reach = 3
	penfactor = 55
	recovery = 10
	damfactor = 1.3
	chargetime = 6
	swingdelay = 12

/datum/intent/spear/cut/strong
	damfactor = 1.0

/datum/intent/spear/cut/glaive
	damfactor = 1.0
	penfactor = 20

/datum/intent/spear/cast
	name = "cast"
	chargetime = 0
	noaa = TRUE
	misscost = 0
	icon_state = "inuse"
	no_attack = TRUE

/datum/intent/sword/cut/zwei
	reach = 2

/datum/intent/sword/thrust/zwei
	reach = 2
	chargetime = 0.6

/datum/intent/sword/chop/zwei
	reach = 2
	clickcd = 14

/datum/intent/sword/chop/great
	name = "cleave"
	attack_verb = list("cleaves", "splits")
	reach = 2
	damfactor = 1.4
	chargetime = 1
	recovery = 10
	clickcd = 14


/datum/intent/sword/thrust/estoc
	name = "thrust"
	penfactor = 50
	recovery = 10

/datum/intent/sword/lunge
	name = "lunge"
	icon_state = "inimpale"
	attack_verb = list("lunges")
	animname = "stab"
	blade_class = BCLASS_STAB
	hitsound = list('sound/combat/hits/bladed/genstab (1).ogg', 'sound/combat/hits/bladed/genstab (2).ogg', 'sound/combat/hits/bladed/genstab (3).ogg')
	reach = 2
	penfactor = 30
	damfactor = 1.2
	chargetime = 1
	recovery = 20
	clickcd = 14

//polearm objs ฅ^•ﻌ•^ฅ

/obj/item/rogueweapon/woodstaff
	force = 12
	force_wielded = 24
	possible_item_intents = list(SPEAR_BASH)
	gripped_intents = list(SPEAR_BASH, /datum/intent/mace/smash/wood)
	name = "wooden staff"
	desc = "Not so heavy, perfect for beggars, pilgrims and mages."
	icon_state = "woodstaff"
	icon = 'icons/roguetown/weapons/64.dmi'
	wlength = WLENGTH_LONG
	w_class = WEIGHT_CLASS_BULKY
	slot_flags = ITEM_SLOT_BACK
	blade_dulling = DULLING_BASHCHOP
	sharpness = IS_BLUNT
	walking_stick = TRUE
	pixel_y = -16
	pixel_x = -16
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	wdefense = 4
	bigboy = TRUE
	gripsprite = TRUE
	associated_skill = /datum/skill/combat/polearms
	resistance_flags = FLAMMABLE

/obj/item/rogueweapon/woodstaff/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.6,"sx" = -6,"sy" = -1,"nx" = 8,"ny" = 0,"wx" = -4,"wy" = 0,"ex" = 2,"ey" = 1,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = -38,"sturn" = 37,"wturn" = 32,"eturn" = -23,"nflip" = 0,"sflip" = 8,"wflip" = 8,"eflip" = 0)
			if("wielded")
				return list("shrink" = 0.6,"sx" = 4,"sy" = -2,"nx" = -3,"ny" = -2,"wx" = -5,"wy" = -1,"ex" = 3,"ey" = -2,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 7,"sturn" = -7,"wturn" = 16,"eturn" = -22,"nflip" = 8,"sflip" = 0,"wflip" = 8,"eflip" = 0)
			if("onbelt")
				return list("shrink" = 0.3,"sx" = -2,"sy" = -5,"nx" = 4,"ny" = -5,"wx" = 0,"wy" = -5,"ex" = 2,"ey" = -5,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 0,"nflip" = 0,"sflip" = 0,"wflip" = 0,"eflip" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0)

/obj/item/rogueweapon/woodstaff/wise
	name = "wise staff"
	desc = "A staff for keeping the volfs at bay..."
	wdefense = 6

/obj/item/rogueweapon/woodstaff/aries
	name = "staff of the shepherd"
	desc = "This staff makes you look important to any peasante."
	force = 22
	force_wielded = 30
	icon_state = "aries"
	icon = 'icons/roguetown/weapons/32.dmi'
	pixel_y = 0
	pixel_x = 0
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	bigboy = FALSE
	gripsprite = FALSE
	gripped_intents = null

/obj/item/rogueweapon/woodstaff/aries/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.6,"sx" = -6,"sy" = 2,"nx" = 8,"ny" = 2,"wx" = -4,"wy" = 2,"ex" = 1,"ey" = 2,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = -38,"sturn" = 300,"wturn" = 32,"eturn" = -23,"nflip" = 0,"sflip" = 100,"wflip" = 8,"eflip" = 0)
			if("wielded")
				return list("shrink" = 0.6,"sx" = 4,"sy" = -2,"nx" = -3,"ny" = -2,"wx" = -5,"wy" = -1,"ex" = 3,"ey" = -2,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 7,"sturn" = -7,"wturn" = 16,"eturn" = -22,"nflip" = 8,"sflip" = 0,"wflip" = 8,"eflip" = 0)


/obj/item/rogueweapon/spear
	force = 18
	force_wielded = 30
	possible_item_intents = list(SPEAR_THRUST, SPEAR_BASH) //bash is for nonlethal takedowns, only targets limbs
	gripped_intents = list(SPEAR_THRUST, SPEAR_CUT, SPEAR_BASH)
	name = "spear"
	desc = "This iron spear is great to impale goblins."
	icon_state = "spear"
	icon = 'icons/roguetown/weapons/64.dmi'
	pixel_y = -16
	pixel_x = -16
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	bigboy = TRUE
	gripsprite = TRUE
	wlength = WLENGTH_GREAT
	w_class = WEIGHT_CLASS_BULKY
	minstr = 8
	max_blade_int = 100
	anvilrepair = /datum/skill/craft/weaponsmithing
	smeltresult = /obj/item/ingot/iron
	associated_skill = /datum/skill/combat/polearms
	blade_dulling = DULLING_BASHCHOP
	walking_stick = TRUE
	wdefense = 5
	thrown_bclass = BCLASS_STAB
	throwforce = 25
	resistance_flags = FLAMMABLE

/obj/item/rogueweapon/spear/psyspear
	name = "psydonian spear"
	desc = "Silver spear, crafted to impale those the Inquisiton hunts."
	icon_state = "psyspear"
	is_silver = TRUE
	max_blade_int = 150
	wdefense = 5
	wbalance = 0.5

/obj/item/rogueweapon/spear/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.6,"sx" = -7,"sy" = 2,"nx" = 7,"ny" = 3,"wx" = -2,"wy" = 1,"ex" = 1,"ey" = 1,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = -38,"sturn" = 37,"wturn" = 30,"eturn" = -30,"nflip" = 0,"sflip" = 8,"wflip" = 8,"eflip" = 0)
			if("wielded")
				return list("shrink" = 0.6,"sx" = 5,"sy" = -3,"nx" = -5,"ny" = -2,"wx" = -5,"wy" = -1,"ex" = 3,"ey" = -2,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 7,"sturn" = -7,"wturn" = 16,"eturn" = -22,"nflip" = 8,"sflip" = 0,"wflip" = 8,"eflip" = 0)

/obj/item/rogueweapon/spear/bonespear
	force = 18
	force_wielded = 22
	name = "bone spear"
	desc = "A spear made of bones..."
	icon_state = "bonespear"
	pixel_y = -16
	pixel_x = -16
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	bigboy = TRUE
	gripsprite = TRUE
	wlength = WLENGTH_GREAT
	w_class = WEIGHT_CLASS_BULKY
	minstr = 6
	max_blade_int = 70
	smeltresult = null
	associated_skill = /datum/skill/combat/polearms
	blade_dulling = DULLING_BASHCHOP
	walking_stick = TRUE
	wdefense = 4
	max_integrity = 60
	throwforce = 20

/obj/item/rogueweapon/spear/billhook
	name = "billhook"
	desc = "A neat hook."
	icon_state = "billhook"
	gripped_intents = list(SPEAR_THRUST, /datum/intent/spear/cut/strong, SPEAR_BASH)
	smeltresult = /obj/item/ingot/steel
	max_blade_int = 200
	minstr = 8
	wdefense = 5
	throwforce = 15

/obj/item/rogueweapon/spear/improvisedbillhook
	force = 12
	force_wielded = 25
	name = "improvised billhook"
	desc = "Looks hastily made."
	icon_state = "billhook"
	smeltresult = /obj/item/ingot/iron
	max_blade_int = 100
	wdefense = 4.5
	throwforce = 10

/obj/item/rogueweapon/spear/stone
	force = 15
	force_wielded = 18
	name = "stone spear"
	desc = "This handmade spear is simple, but does the job."
	icon_state = "stonespear"
	pixel_y = -16
	pixel_x = -16
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	bigboy = TRUE
	gripsprite = TRUE
	wlength = WLENGTH_GREAT
	minstr = 6
	max_blade_int = 50
	smeltresult = null
	associated_skill = /datum/skill/combat/polearms
	blade_dulling = DULLING_BASHCHOP
	walking_stick = TRUE
	wdefense = 4
	max_integrity = 50
	throwforce = 20

/obj/item/rogueweapon/halberd
	force = 15
	force_wielded = 30
	possible_item_intents = list(SPEAR_THRUST, SPEAR_BASH) //bash is for nonlethal takedowns, only targets limbs
	gripped_intents = list(/datum/intent/spear/thrust/strong, /datum/intent/spear/cut/strong, /datum/intent/spear/chop, SPEAR_BASH)
	name = "halberd"
	desc = "A steel halberd, specialized at puncturing through armor - but just as effective against flesh."
	icon_state = "halberd"
	icon = 'icons/roguetown/weapons/64.dmi'
	pixel_y = -16
	pixel_x = -16
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	bigboy = TRUE
	gripsprite = TRUE
	wlength = WLENGTH_GREAT
	w_class = WEIGHT_CLASS_BULKY
	minstr = 9
	max_blade_int = 200
	anvilrepair = /datum/skill/craft/weaponsmithing
	smeltresult = /obj/item/ingot/steel
	associated_skill = /datum/skill/combat/polearms
	blade_dulling = DULLING_BASHCHOP
	walking_stick = TRUE
	wdefense = 4.5
	embedding = list("embed_chance" = 0)

/obj/item/rogueweapon/halberd/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.6,"sx" = -7,"sy" = 2,"nx" = 7,"ny" = 3,"wx" = -2,"wy" = 1,"ex" = 1,"ey" = 1,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = -38,"sturn" = 37,"wturn" = 30,"eturn" = -30,"nflip" = 0,"sflip" = 8,"wflip" = 8,"eflip" = 0)
			if("wielded")
				return list("shrink" = 0.6,"sx" = 5,"sy" = -3,"nx" = -5,"ny" = -2,"wx" = -5,"wy" = -1,"ex" = 3,"ey" = -2,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 7,"sturn" = -7,"wturn" = 16,"eturn" = -22,"nflip" = 8,"sflip" = 0,"wflip" = 8,"eflip" = 0)
			if("onbelt")
				return list("shrink" = 0.3,"sx" = -2,"sy" = -5,"nx" = 4,"ny" = -5,"wx" = 0,"wy" = -5,"ex" = 2,"ey" = -5,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 0,"nflip" = 0,"sflip" = 0,"wflip" = 0,"eflip" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0)

/obj/item/rogueweapon/halberd/holysee
	name = "eclipsum halberd"
	desc = "A mutual effort of Noc and Astrata's followers, this halberd was forged with both Silver and Gold alike. Blessed to hold strength and bring hope. Whether dae or nite."
	icon_state = "gsspear"
	force = 20
	force_wielded = 35

/obj/item/rogueweapon/halberd/bardiche
	force_wielded = 35
	possible_item_intents = list(/datum/intent/spear/cut/strong, SPEAR_BASH) //bash is for nonlethal takedowns, only targets limbs
	gripped_intents = list(/datum/intent/spear/thrust, /datum/intent/spear/cut/strong, /datum/intent/spear/chop, SPEAR_BASH)
	name = "bardiche"
	desc = "An imposing poleaxe, hailing from the cold steppes of Rhaenval."
	icon_state = "bardiche"
	anvilrepair = /datum/skill/craft/weaponsmithing
	smeltresult = /obj/item/ingot/iron
	max_blade_int = 200
	wdefense = 4
	wbalance = -1

/obj/item/rogueweapon/halberd/bardiche/scythe
	name = "Summer Scythe"
	desc = "Summer's verdancy runs through the head of this scythe. All the more to sow."
	icon_state = "dendorscythe"
	gripped_intents = list(/datum/intent/spear/cut/strong, /datum/intent/spear/chop, /datum/intent/spear/chop/reap, SPEAR_BASH)

/datum/intent/spear/chop/reap
	name = "reap"
	attack_verb = list("reaps", "fells")
	warnie = "mobwarning"
	icon_state = "inpunish"
	no_early_release = TRUE
	damfactor = 1.4
	penfactor = 60
	chargetime = 16
	releasedrain = 10
	misscost = 8
	charging_slowdown = 1
	clickcd = 16

/obj/item/rogueweapon/halberd/psyhalberd
	name = "psydonian halberd"
	desc = "A silver halberd, forged by the inquisiton."
	max_blade_int = 250
	icon_state = "psyhalberd"
	is_silver = TRUE
	wdefense = 5
	smeltresult = /obj/item/ingot/silver

/obj/item/rogueweapon/halberd/glaive
	force_wielded = 35
	possible_item_intents = list(/datum/intent/spear/cut/strong, SPEAR_BASH) //bash is for nonlethal takedowns, only targets limbs
	gripped_intents = list(/datum/intent/spear/chop/glaive, /datum/intent/spear/cut/glaive, /datum/intent/spear/thrust, SPEAR_BASH)
	name = "glaive"
	desc = "A curved blade on a pole, specialised in reach and offensive power, but expensive to manufacture and difficult to wield."
	icon_state = "glaive"
	anvilrepair = /datum/skill/craft/weaponsmithing
	smeltresult = /obj/item/ingot/steel
	max_blade_int = 300
	wdefense = 4
	wbalance = -1.5

/obj/item/rogueweapon/halberd/glaive/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.6,"sx" = -7,"sy" = 2,"nx" = 7,"ny" = 3,"wx" = -2,"wy" = 1,"ex" = 1,"ey" = 1,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = -38,"sturn" = 37,"wturn" = 30,"eturn" = -30,"nflip" = 0,"sflip" = 8,"wflip" = 8,"eflip" = 0)
			if("wielded") 
				return list("shrink" = 0.6,"sx" = 3,"sy" = 4,"nx" = -1,"ny" = 4,"wx" = -8,"wy" = 3,"ex" = 7,"ey" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 15,"nflip" = 8,"sflip" = 0,"wflip" = 8,"eflip" = 0)
			if("onback") 
				return list("shrink" = 0.5,"sx" = -1,"sy" = 2,"nx" = 0,"ny" = 2,"wx" = 2,"wy" = 1,"ex" = 0,"ey" = 1,"nturn" = 0,"sturn" = 0,"wturn" = 70,"eturn" = 15,"nflip" = 1,"sflip" = 1,"wflip" = 1,"eflip" = 1,"northabove" = 1,"southabove" = 0,"eastabove" = 0,"westabove" = 0)

/obj/item/rogueweapon/eaglebeak
	force = 15
	force_wielded = 30
	possible_item_intents = list(/datum/intent/spear/thrust/eaglebeak, SPEAR_BASH) //bash is for nonlethal takedowns, only targets limbs
	gripped_intents = list(/datum/intent/spear/thrust/eaglebeak, /datum/intent/mace/smash/eaglebeak, SPEAR_BASH)
	name = "eagle's beak"
	desc = "A reinforced pole affixed with an ornate steel eagle's head, of which its beak is intended to pierce with great harm."
	icon_state = "eaglebeak"
	icon = 'icons/roguetown/weapons/64.dmi'
	pixel_y = -16
	pixel_x = -16
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	bigboy = TRUE
	gripsprite = TRUE
	wlength = WLENGTH_GREAT
	w_class = WEIGHT_CLASS_BULKY
	minstr = 11
	smeltresult = /obj/item/ingot/steel
	associated_skill = /datum/skill/combat/polearms
	max_blade_int = 300
	max_integrity = 500
	blade_dulling = DULLING_BASHCHOP
	walking_stick = TRUE
	wdefense = 4.5
	wbalance = -1
	sellprice = 60

/obj/item/rogueweapon/eaglebeak/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.6,"sx" = -6,"sy" = 6,"nx" = 6,"ny" = 7,"wx" = 0,"wy" = 5,"ex" = -1,"ey" = 7,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = -50,"sturn" = 40,"wturn" = 50,"eturn" = -50,"nflip" = 0,"sflip" = 8,"wflip" = 8,"eflip" = 0)
			if("wielded")
				return list("shrink" = 0.6,"sx" = 9,"sy" = -4,"nx" = -7,"ny" = 1,"wx" = -9,"wy" = 2,"ex" = 10,"ey" = 2,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 5,"sturn" = -190,"wturn" = -170,"eturn" = -10,"nflip" = 8,"sflip" = 8,"wflip" = 1,"eflip" = 0)
			if("onbelt")
				return list("shrink" = 0.3,"sx" = -2,"sy" = -5,"nx" = 4,"ny" = -5,"wx" = 0,"wy" = -5,"ex" = 2,"ey" = -5,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 0,"nflip" = 0,"sflip" = 0,"wflip" = 0,"eflip" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0)


/obj/item/rogueweapon/eaglebeak/lucerne
	name = "lucerne"
	desc = "A polehammer of simple iron. Fracture bone and dissent with simple brute force."
	force = 18
	force_wielded = 30
	possible_item_intents = list(/datum/intent/mace/smash/eaglebeak) //bash is for nonlethal takedowns, only targets limbs
	gripped_intents = list(/datum/intent/mace/smash/eaglebeak, SPEAR_BASH)
	icon_state = "polehammer"
	smeltresult = /obj/item/ingot/iron
	max_blade_int = 300
	max_integrity = 300
	wdefense = 3
	wbalance = -1.5
	sellprice = 40

/datum/intent/spear/thrust/eaglebeak
	penfactor = 75
	damfactor = 1.1
	chargetime = 1
	swingdelay = 10

/datum/intent/mace/smash/eaglebeak
	reach = 2
	swingdelay = 12

/obj/item/rogueweapon/spear/bronze
	name = "bronze spear"
	desc = "A spear forged of bronze. Much more durable than a regular spear."
	icon_state = "bronzespear"
	max_blade_int = 300
	smeltresult = /obj/item/ingot/bronze
	smelt_bar_num = 2


/obj/item/rogueweapon/greatsword
	force = 12
	force_wielded = 32
	possible_item_intents = list(/datum/intent/sword/chop,/datum/intent/sword/strike) //bash is for nonlethal takedowns, only targets limbs
	gripped_intents = list(/datum/intent/sword/cut/zwei, /datum/intent/sword/chop/great, /datum/intent/sword/thrust/zwei, /datum/intent/sword/strike)
	name = "greatsword"
	desc = "A long, stout blade, too lenghty for a conventional sheath. Though archaic, its sheer weight carries devastating momentum."
	icon_state = "gsw"
	icon = 'icons/roguetown/weapons/64.dmi'
	pixel_y = -16
	pixel_x = -16
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	bigboy = TRUE
	gripsprite = TRUE
	wlength = WLENGTH_GREAT
	w_class = WEIGHT_CLASS_BULKY
	minstr = 11
	smeltresult = /obj/item/ingot/steel
	associated_skill = /datum/skill/combat/swords
	max_blade_int = 300
	wdefense = 2.5
	wbalance = -2 //CLANG, plays to its strenghts - extremely painful to parry if opponent is stronger.
	smelt_bar_num = 3
	embedding = list("embed_chance" = 0)

/obj/item/rogueweapon/greatsword/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list("shrink" = 0.6,"sx" = -6,"sy" = 6,"nx" = 6,"ny" = 7,"wx" = 0,"wy" = 5,"ex" = -1,"ey" = 7,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = -50,"sturn" = 40,"wturn" = 50,"eturn" = -50,"nflip" = 0,"sflip" = 8,"wflip" = 8,"eflip" = 0)
			if("wielded")
				return list("shrink" = 0.6,"sx" = 9,"sy" = -4,"nx" = -7,"ny" = 1,"wx" = -9,"wy" = 2,"ex" = 10,"ey" = 2,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0,"nturn" = 5,"sturn" = -190,"wturn" = -170,"eturn" = -10,"nflip" = 8,"sflip" = 8,"wflip" = 1,"eflip" = 0)
			if("onbelt")
				return list("shrink" = 0.3,"sx" = -2,"sy" = -5,"nx" = 4,"ny" = -5,"wx" = 0,"wy" = -5,"ex" = 2,"ey" = -5,"nturn" = 0,"sturn" = 0,"wturn" = 0,"eturn" = 0,"nflip" = 0,"sflip" = 0,"wflip" = 0,"eflip" = 0,"northabove" = 0,"southabove" = 1,"eastabove" = 1,"westabove" = 0)


/obj/item/rogueweapon/greatsword/zwei
	force = 12
	force_wielded = 30
	gripped_intents = list(/datum/intent/sword/cut/zwei, /datum/intent/sword/chop/zwei, /datum/intent/sword/thrust/zwei, /datum/intent/sword/strike)
	name = "zweihander"
	desc = "A design perfected in Grenzelhoft, more easily maneuverable despite its lenght. This one's blade is made of iron, and prone to shattering."
	icon_state = "zwei"
	smeltresult = /obj/item/ingot/iron
	smelt_bar_num = 3
	max_blade_int = 175
	wdefense = 3.5
	wbalance = 0

/obj/item/rogueweapon/greatsword/zwei/steel
	name = "steel zweihander"
	desc = "A design perfected in Grenzelhoft, more easily maneuverable despite its lenght."
	icon_state = "steelzwei"
	smeltresult = /obj/item/ingot/steel
	wdefense = 4

/obj/item/rogueweapon/greatsword/psygsword
	name = "psydonian greatsword"
	desc = "An inspiring, gleaming lenght of thick silver, capable of cleaving in twain any foe of the Inquisition."
	icon_state = "psygsword"
	max_blade_int = 350
	wdefense = 3
	is_silver = TRUE
	smeltresult = /obj/item/ingot/silver

/obj/item/rogueweapon/estoc
	name = "estoc"
	desc = "A sword possessed of a quite long and tapered blade that is intended to be thrust between the \
	gaps in an opponent's armor. The hilt is wrapped tight in black leather."
	icon_state = "estoc"
	icon = 'icons/roguetown/weapons/64.dmi'
	pixel_y = -16
	pixel_x = -16
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	force = 12
	force_wielded = 25
	possible_item_intents = list(
		/datum/intent/sword/chop,
		/datum/intent/sword/strike,
	)
	gripped_intents = list(
		/datum/intent/sword/thrust/estoc,
		/datum/intent/sword/lunge,
		/datum/intent/sword/chop,
		/datum/intent/sword/strike,
	)
	bigboy = TRUE
	gripsprite = TRUE
	wlength = WLENGTH_GREAT
	w_class = WEIGHT_CLASS_BULKY
	minstr = 8
	smeltresult = /obj/item/ingot/steel
	associated_skill = /datum/skill/combat/swords
	max_blade_int = 300
	wdefense = 4
	smelt_bar_num = 2
	embedding = list("embed_chance" = 0)

/obj/item/rogueweapon/estoc/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list(
					"shrink" = 0.6,
					"sx" = -6,
					"sy" = 7,
					"nx" = 6,
					"ny" = 8,
					"wx" = 0,
					"wy" = 6,
					"ex" = -1,
					"ey" = 8,
					"northabove" = 0,
					"southabove" = 1,
					"eastabove" = 1,
					"westabove" = 0,
					"nturn" = -50,
					"sturn" = 40,
					"wturn" = 50,
					"eturn" = -50,
					"nflip" = 0,
					"sflip" = 8,
					"wflip" = 8,
					"eflip" = 0,
					)
			if("wielded")
				return list(
					"shrink" = 0.6,
					"sx" = 3,
					"sy" = 5,
					"nx" = -3,
					"ny" = 5,
					"wx" = -9,
					"wy" = 4,
					"ex" = 9,
					"ey" = 1,
					"northabove" = 0,
					"southabove" = 1,
					"eastabove" = 1,
					"westabove" = 0,
					"nturn" = 0,
					"sturn" = 0,
					"wturn" = 0,
					"eturn" = 15,
					"nflip" = 8,
					"sflip" = 0,
					"wflip" = 8,
					"eflip" = 0,
					)

/obj/item/rogueweapon/woodstaff/naledi
	name = "naledian warstaff"
	desc = "A staff carrying the crescent moon of Psydon's knowledge, as well as the black and gold insignia of the war scholars."
	icon_state = "naledistaff"
	force = 18
	force_wielded = 28
	max_integrity = 250

/obj/item/rogueweapon/fishspear
	force = 20
	possible_item_intents = list(SPEAR_THRUST, SPEAR_BASH, SPEAR_CAST) //bash is for nonlethal takedowns, only targets limbs
	name = "fishing spear"
	desc = "This two-pronged and barbed spear was made to catch those pesky fish."
	icon_state = "fishspear"
	icon = 'icons/roguetown/weapons/64.dmi'
	pixel_y = -16
	pixel_x = -16
	inhand_x_dimension = 64
	inhand_y_dimension = 64
	bigboy = TRUE
	gripsprite = TRUE
	wlength = WLENGTH_GREAT
	w_class = WEIGHT_CLASS_BULKY
	minstr = 8
	max_blade_int = 200
	anvilrepair = /datum/skill/craft/weaponsmithing
	smeltresult = /obj/item/ingot/steel
	associated_skill = /datum/skill/combat/polearms
	blade_dulling = DULLING_BASHCHOP
	walking_stick = TRUE
	wdefense = 6
	thrown_bclass = BCLASS_STAB
	throwforce = 35
	resistance_flags = FLAMMABLE

/obj/item/rogueweapon/fishspear/depthseek //DO NOT ADD RECIPE. MEANT TO BE AN ABYSSORITE RELIC. IDEA COURTESY OF LORDINQPLAS
	force = 45
	name = "blessed depthseeker"
	desc = "A beautifully crafted weapon, with handle carved of some beast's bone, inlaid with smooth seaglass at pommel and head, with two prongs smithed of fine dwarven steel. The seaglass carving at the head is a masterwork in and of itself, you can feel an abyssal energy radiating off it."
	icon_state = "depthseek"
	smeltresult = /obj/item/ingot/blacksteel
	max_blade_int = 2600
	wdefense = 8
	throwforce = 50

/obj/item/rogueweapon/fishspear/attack_self(mob/user)
	if(user.used_intent.type == SPEAR_CAST)
		if(user.doing)
			user.doing = 0

/obj/item/rogueweapon/fishspear/afterattack(obj/target, mob/user, proximity)
	freshfishloot = list(
		/obj/item/reagent_containers/food/snacks/fish/carp = 200,
		/obj/item/reagent_containers/food/snacks/fish/sunny = 300,
		/obj/item/reagent_containers/food/snacks/fish/salmon = 200,
		/obj/item/reagent_containers/food/snacks/fish/eel = 150,
		/mob/living/simple_animal/hostile/retaliate/rogue/mudcrab = 20,
	)
	seafishloot = list(
		/obj/item/reagent_containers/food/snacks/fish/cod = 200,
		/obj/item/reagent_containers/food/snacks/fish/plaice = 200,
		/obj/item/reagent_containers/food/snacks/fish/sole = 305,
		/obj/item/reagent_containers/food/snacks/fish/angler = 150,
		/obj/item/reagent_containers/food/snacks/fish/lobster = 300,
		/obj/item/reagent_containers/food/snacks/fish/bass = 200,
		/obj/item/reagent_containers/food/snacks/fish/clam = 100,
		/obj/item/reagent_containers/food/snacks/fish/clownfish = 50,
		/mob/living/carbon/human/species/goblin/npc/sea = 25,
		/mob/living/simple_animal/hostile/rogue/deepone = 30,
		/mob/living/simple_animal/hostile/rogue/deepone/spit = 30,
	)
	mudfishloot = list(
		/obj/item/reagent_containers/food/snacks/fish/mudskipper = 200,
		/obj/item/natural/worms/leech = 50,
		/mob/living/simple_animal/hostile/retaliate/rogue/mudcrab = 25,
	)
	var/sl = user.mind.get_skill_level(/datum/skill/labor/fishing) // User's skill level
	var/ft = 160 //Time to get a catch, in ticks
	var/fpp =  130 - (40 + (sl * 15)) // Fishing power penalty based on fishing skill level
	var/frwt = list(/turf/open/water/river, /turf/open/water/cleanshallow, /turf/open/water/pond)
	var/salwt = list(/turf/open/water/ocean, /turf/open/water/ocean/deep)
	var/mud = list(/turf/open/water/swamp, /turf/open/water/swamp/deep)
	if(istype(target, /turf/open/water))
		if(user.used_intent.type == SPEAR_CAST && !user.doing)
			if(target in range(user,3))
				user.visible_message("<span class='warning'>[user] searches for a fish!</span>", \
									"<span class='notice'>I begin looking for a fish to spear.</span>")
				playsound(src.loc, 'sound/items/fishing_plouf.ogg', 100, TRUE)
				ft -= (sl * 20) //every skill lvl is -2 seconds
				ft = max(20,ft) //min of 2 seconds
				if(do_after(user,ft, target = target))
					var/fishchance = 100 // Total fishing chance, deductions applied below
					if(user.mind)
						if(!sl) // If we have zero fishing skill...
							fishchance -= 50 // 50% chance to fish base
						else
							fishchance -= fpp // Deduct a penalty the lower our fishing level is (-0 at legendary)
					var/mob/living/fisherman = user
					if(prob(fishchance)) // Finally, roll the dice to see if we fish.
						if(target.type in frwt)
							var/A = pickweight(freshfishloot)
							var/ow = 30 + (sl * 10) // Opportunity window, in ticks. Longer means you get more time to cancel your bait
							to_chat(user, "<span class='notice'>You see something!</span>")
							playsound(src.loc, 'sound/items/fishing_plouf.ogg', 100, TRUE)
							if(!do_after(user,ow, target = target))
								if(ismob(A)) // TODO: Baits with mobs on their fishloot lists OR water tiles with their own fish loot pools
									var/mob/M = A
									if(M.type in subtypesof(/mob/living/simple_animal/hostile))
										new M(target)
									else
										new M(user.loc)
									user.mind.add_sleep_experience(/datum/skill/labor/fishing, fisherman.STAINT*2) // High risk high reward
								else
									new A(user.loc)
									to_chat(user, "<span class='warning'>Pull 'em in!</span>")
									user.mind.add_sleep_experience(/datum/skill/labor/fishing, round(fisherman.STAINT, 2), FALSE) // Level up!
									playsound(src.loc, 'sound/items/Fish_out.ogg', 100, TRUE)	
							else
								to_chat(user, "<span class='warning'>Damn, it got away... I should <b>pull away</b> next time.</span>")								
						if(target.type in salwt)
							var/A = pickweight(seafishloot)
							var/ow = 30 + (sl * 10) // Opportunity window, in ticks. Longer means you get more time to cancel your bait
							to_chat(user, "<span class='notice'>You see something!</span>")
							playsound(src.loc, 'sound/items/fishing_plouf.ogg', 100, TRUE)
							if(!do_after(user,ow, target = target))
								if(ismob(A)) // TODO: Baits with mobs on their fishloot lists OR water tiles with their own fish loot pools
									var/mob/M = A
									if(M.type in subtypesof(/mob/living/simple_animal/hostile))
										new M(target)
									else
										new M(user.loc)
									user.mind.add_sleep_experience(/datum/skill/labor/fishing, fisherman.STAINT*2) // High risk high reward
								else
									new A(user.loc)
									to_chat(user, "<span class='warning'>Pull 'em in!</span>")
									user.mind.add_sleep_experience(/datum/skill/labor/fishing, round(fisherman.STAINT, 2), FALSE) // Level up!
									playsound(src.loc, 'sound/items/Fish_out.ogg', 100, TRUE)	
							else
								to_chat(user, "<span class='warning'>Damn, it got away... I should <b>pull away</b> next time.</span>")							
						if(target.type in mud)
							var/A = pickweight(mudfishloot)
							var/ow = 30 + (sl * 10) // Opportunity window, in ticks. Longer means you get more time to cancel your bait
							to_chat(user, "<span class='notice'>You see something!</span>")
							playsound(src.loc, 'sound/items/fishing_plouf.ogg', 100, TRUE)
							if(!do_after(user,ow, target = target))
								if(ismob(A)) // TODO: Baits with mobs on their fishloot lists OR water tiles with their own fish loot pools
									var/mob/M = A
									if(M.type in subtypesof(/mob/living/simple_animal/hostile))
										new M(target)
									else
										new M(user.loc)
									user.mind.add_sleep_experience(/datum/skill/labor/fishing, fisherman.STAINT*2) // High risk high reward
								else
									new A(user.loc)
									to_chat(user, "<span class='warning'>Pull 'em in!</span>")
									user.mind.add_sleep_experience(/datum/skill/labor/fishing, round(fisherman.STAINT, 2), FALSE) // Level up!
									playsound(src.loc, 'sound/items/Fish_out.ogg', 100, TRUE)
							else
								to_chat(user, "<span class='warning'>Damn, it got away... I should <b>pull away</b> next time.</span>")
					else
						to_chat(user, "<span class='warning'>Not a single fish...</span>")
						user.mind.add_sleep_experience(/datum/skill/labor/fishing, fisherman.STAINT/2) // Pity XP.
				else
					to_chat(user, "<span class='warning'>I must stand still to fish.</span>")
			update_icon()

/obj/item/rogueweapon/fishspear/getonmobprop(tag)
	. = ..()
	if(tag)
		switch(tag)
			if("gen")
				return list(
					"shrink" = 0.6,
					"sx" = -6,
					"sy" = 7,
					"nx" = 6,
					"ny" = 8,
					"wx" = 0,
					"wy" = 6,
					"ex" = -1,
					"ey" = 8,
					"northabove" = 0,
					"southabove" = 1,
					"eastabove" = 1,
					"westabove" = 0,
					"nturn" = -50,
					"sturn" = 40,
					"wturn" = 50,
					"eturn" = -50,
					"nflip" = 0,
					"sflip" = 8,
					"wflip" = 8,
					"eflip" = 0,
					)
			if("wielded")
				return list(
					"shrink" = 0.6,
					"sx" = 3,
					"sy" = 1,
					"nx" = -3,
					"ny" = 1,
					"wx" = -9,
					"wy" = 1,
					"ex" = 9,
					"ey" = 1,
					"northabove" = 0,
					"southabove" = 1,
					"eastabove" = 1,
					"westabove" = 0,
					"nturn" = -30,
					"sturn" = 30,
					"wturn" = -30,
					"eturn" = 30,
					"nflip" = 8,
					"sflip" = 0,
					"wflip" = 8,
					"eflip" = 0,
					)
