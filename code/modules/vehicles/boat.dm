//Boat

/obj/vehicle/ridden/boat
	name = "boat"
	desc = ""
	icon_state = "goliath_boat"
	icon = 'icons/obj/lavaland/dragonboat.dmi'
	var/allowed_turf = /turf/open/water
	can_buckle = TRUE
	drag_slowdown = 3
	movedelay = 3
	legs_required = 0
	arms_required = 0

/obj/vehicle/ridden/boat/Initialize()
	. = ..()
	var/datum/component/riding/D = LoadComponent(/datum/component/riding)
	D.keytype = /obj/item/oar
	D.allowed_turf_typecache = typecacheof(allowed_turf)

/obj/item/oar
	name = "oar"
	icon = 'icons/obj/vehicles.dmi'
	icon_state = "oar"
	item_state = "oar"
	lefthand_file = 'icons/mob/inhands/misc/lavaland_lefthand.dmi'
	righthand_file = 'icons/mob/inhands/misc/lavaland_righthand.dmi'
	desc = ""
	force = 12
	w_class = WEIGHT_CLASS_NORMAL
