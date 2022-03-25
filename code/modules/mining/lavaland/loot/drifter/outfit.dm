// https://discord.com/channels/826892312977473616/827315126969171968/955489825325219851

// TODO: dashing

/obj/item/clothing/head/drifter
	name = "drifter's hood"
	desc = "The hood of a drifter's outfit."
	icon_state = "drifter"
	item_state = "drifter"
	resistance_flags = LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	armor = list(MELEE = 20, BULLET = 20, LASER = 20, ENERGY = 10, BOMB = 0, BIO = 0, RAD = 0, FIRE = 20, ACID = 0)

/obj/item/clothing/under/drifter
	name = "drifter's outfit"
	desc = "Once used by a drifter, it has been discarded in favor of better equipment."
	icon_state = "drifter"
	item_state = "drifter"
	resistance_flags = LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	armor = list(MELEE = 20, BULLET = 20, LASER = 20, ENERGY = 10, BOMB = 0, BIO = 0, RAD = 0, FIRE = 20, ACID = 0)

/obj/item/clothing/under/drifter/proc/cough(mob/M)
	// TODO: add a timer for coughing

	return

/*
/obj/item/clothing/accessory/drifter
	name = "drifter's cloth"
	desc = "It looks like it can be attached to a drifter outfit."
	icon_state = "drifter_skirt"
	item_color = null
	allow_duplicates = FALSE

/obj/item/clothing/accessory/drifter/on_attached(obj/item/clothing/under/S, mob/user)
	if (!istype(S, /obj/item/clothing/under/drifter))
		return 0
	..(S, user)

/obj/item/clothing/accessory/drifter/attack(mob/living/carbon/human/H, mob/living/user)
	if (!istype(S, /obj/item/clothing/under/drifter))
		user.to_chat("<span class='warning'>You can't attach [src] to [H]!</span>")
		return
	..(H, user)
*/

/obj/item/clothing/suit/storage/drifter
	name = "drifter's cloak"
	desc = "A cloak discarded by a drifter. It has pockets for weapons."
	icon_state = "drifter"
	item_state = "drifter"
	resistance_flags = LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	armor = list(MELEE = 20, BULLET = 20, LASER = 20, ENERGY = 10, BOMB = 0, BIO = 0, RAD = 0, FIRE = 20, ACID = 0)
	allowed = list(/obj/item/melee/drifter)

/obj/item/clothing/suit/storage/drifter/New()
	..()
	pockets.storage_slots = 7 // one for every gun
	pockets.max_w_class = WEIGHT_CLASS_NORMAL
	pockets.max_combined_w_class = 21
	pockets.can_hold = list( \
		/obj/item/gun/energy/drifter, \
		/obj/item/gun/energy/drifter/upgraded \
		) //  there will be more guns in the future
