/obj/item/organ/external/arm/right/wooden
	name = "wooden arm"
	icon = 'icons/mob/human_races/r_golem.dmi'
	icon_state = "r_arm"

/obj/item/organ/external/arm/right/wooden/New(mob/living/carbon/holder)
	..(holder)
	var/icon/new_icon = new /icon(icobase, "r_arm")
	new_icon.ColorTone(rgb(158, 112, 75))
	overlays += new_icon

/obj/item/external/arm/right/wooden/attackby(obj/item/I, mob/user, params)
	if(istype(I, /obj/item/clothing/accessory/scarf/red))
		user.gib()
	. = ..()

/obj/item/organ/external/arm/right/red
	name = "Red's arm"
	icon = 'icons/mob/human_races/r_golem.dmi'
	icon_state = "r_arm"
	var/charged = FALSE

/obj/item/organ/external/arm/right/red/New(mob/living/carbon/holder)
	..(holder)
	var/icon/new_icon = new /icon(icobase, "r_arm")
	new_icon.ColorTone(rgb(158, 112, 75))
	overlays += new_icon


