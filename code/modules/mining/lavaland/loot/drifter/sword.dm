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
	force = 20
	var/obj/item/gun/energy/drifter/gun

/obj/item/melee/drifter/New()
	..()
	if(!src.gun)
		var/obj/item/gun/energy/drifter/pistol = new(get_turf(loc))
		gun = pistol // if the warp cube can do it, so can i
		pistol.sword = src

/obj/item/melee/drifter/attack(mob/living/M, mob/living/user, def_zone)
	if(istype(M, /mob/living) && !M.is_dead() && M != user)
		src.gun.add_charge()
	..()
	/*
	sleep(2)
	if(M.is_dead())
		if(prob(10))
			drop_gearbit(M)
		if(prob(10))
			drop_medkit(M)\

/obj/item/melee/drifter/proc/drop_gearbit(mob/living/M)
	var/obj/item/stack/drifter/gearbit = new(M.loc)
	M.visible_message("<span class='warning'>Something falls out of [M]!</span>", "<span class='warning'>A gearbit falls out of [M]!</span>")

/obj/item/melee/drifter/proc/drop_medkit(mob/living/M)
	var/obj/item/drifter/medkit = new(M.loc)
	M.visible_message("<span class='warning'>Something falls out of [M]!</span>", "<span class='warning'>A medkit falls out of [M]!</span>")

/obj/item/melee/drifter/attackby(obj/item/I, mob/user, params)
	if(!istype(I, /obj/item/upgrade))
		..()
	qdel(I)
	if(I.upgrade == "ammo")
		var/cell = gun.get_cell()
		var/charge = cell.charge
		gun.forceMove(get_turf(user))
		var/obj/item/gun/energy/drifter/upgraded/pistol = new(gun.loc)
		var/new_cell = pistol.get_cell()
		new_cell.charge = charge
		qdel(gun)
		user.put_in_any_hand_if_possible(pistol)
	else // uh oh! this is not a valid upgrade!
		var/obj/item/stack/gearbit/pack/S = new(get_turf(user), 3) // lets refund them
		user.to_chat(src, "<span class='userdanger'>This upgrade is invalid! You have been given three gearbit packs as compensation. Report this to a coder!</span>") // and give them a message about the broken upgrade
		CRASH("Invalid upgrade used on [src] (upgrade = [upgrade])!") // then log a runtime

*/
