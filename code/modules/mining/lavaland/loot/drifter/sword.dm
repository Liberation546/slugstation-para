// TODO: make the outfit and sword, hud can be done later
// https://discord.com/channels/826892312977473616/827315126969171968/955489825325219851
// TODO: pull the sprite of the sword from the wiki

/obj/item/melee/drifter
	name = "hard light sword"
	desc = "A sword made of blue light. How did this get here?"
	icon_state = "drifter_sword"
	item_state = "drifter_sword"
	resistance_flags = LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	hitsound = 'sound/weapons/blade1.ogg'
	force = 10
	var/obj/item/gun/energy/drifter/gun


/obj/item/melee/drifter/New()
	..()
	if(!src.gun)
		var/obj/item/gun/energy/drifter/pistol = new(src.loc)
		gun = pistol // if the warp cube can do it, so can i
		pistol.sword = src

/obj/item/melee/drifter/attack(mob/living/M, mob/living/user, def_zone)
	gun = src.gun
	if(istype(M, /mob/living))
		if(!M.is_dead())
			gun.add_charge()
			gun.update_icon()
	..()

/obj/item/melee/drifter/attackby(obj/item/I, mob/user, params)
	if(!I.istype(/obj/item/upgrade))
		return
	upgrade = I.upgrade
	qdel(I)
	if(upgrade = "ammo")
		cell = gun.get_cell()
		charge = cell.charge
		gun.forceMove(get_turf(user))
		var/obj/item/gun/energy/drifter/upgraded/pistol = new(gun.loc)
		new_cell = pistol.get_cell()
		new_cell.charge = charge
		qdel(gun)
		user.put_in_any_hand_if_possible(pistol)
	else // uh oh! this is not a valid upgrade!
		var/obj/item/stack/gearbit/pack/S = new(user.loc, 3) // lets refund them
		// and give them a message about the broken upgrade
		user.to_chat(src, "<span class='userdanger'>This upgrade is invalid! You have been given three gearbit packs as compensation. Report this to a coder!</span>")
		CRASH("Invalid upgrade used on sword (upgrade = [upgrade]!") // then log a runtime

/obj/item/melee/drifter/attack_self(mob/user)
	return
