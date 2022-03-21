// TODO: make the outfit and sword, hud can be done later
// https://discord.com/channels/826892312977473616/827315126969171968/955489825325219851

// TODO: nab the icon of the magician outfit from dead cells via the wiki

// TODO: make a worn sprite for the outfit, use mining hardsuit as placeholder or something


/obj/item/clothing/suit/drifter
    name = "drifter's outfit"
    desc = "Once used by a drifter, it has been discarded in favor of better equipment."
	equip_sound = 'sound/items/equip/toolbelt_equip.ogg'
    resistance_flags = LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
    armor = list(MELEE = 10, BULLET = 10, LASER = 10, ENERGY = 0, BOMB = 0, BIO = 0, RAD = 0, FIRE = 10, ACID = 0)
    allowed = list(/obj/item/melee/drifter)