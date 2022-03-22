// TODO: make the outfit and sword, hud can be done later
// https://discord.com/channels/826892312977473616/827315126969171968/955489825325219851

// TODO: get the worn outfit from steven and make adjustments to it

/obj/item/clothing/suit/hooded/drifter
	name = "drifter's outfit"
	desc = "Once used by a drifter, it has been discarded in favor of better equipment."
	icon_state = "hardsuit0-syndielite"
	item_state = "drifter"
	equip_sound = "sound/items/equip/toolbelt_equip.ogg"
	resistance_flags = LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	hoodtype = /obj/item/clothing/head/hooded/drifter
	armor = list(MELEE = 10, BULLET = 10, LASER = 10, ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 10, ACID = 0)
	allowed = list(/obj/item/melee/drifter)

/obj/item/clothing/suit/hooded/drifter/proc/cough(mob/M)
	// TODO: add a timer for coughing
	
	return

/obj/item/clothing/head/hooded/drifter/hood
	name = "drifter's outfit"
	desc = "The hood of a drifter's outfit."
	icon_state = "hardsuit0-syndielite"
	item_state = "drifter"
	equip_sound = "sound/items/equip/toolbelt_equip.ogg"
	resistance_flags = LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	armor = list(MELEE = 10, BULLET = 10, LASER = 10, ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 10, ACID = 0)
	allowed = list(/obj/item/melee/drifter)
