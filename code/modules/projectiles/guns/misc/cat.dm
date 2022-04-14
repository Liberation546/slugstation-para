/obj/item/gun/projectile/revolver/guntime
	name = "Guntime"
	desc = "Who the fuck weaponized Runtime?"
	icon_state = "guntime"
	materials = null
	fire_sound = 'sound/creatures/cat_meow.ogg' //FIXME: replace with runtime's meows
	fire_sound_text = "cat"
	mag_type = /obj/item/ammo_box/magazine/internal/shot/improvised/guntime
	origin_tech = ""
	needs_permit = 0 // its a cat


/obj/item/gun/projectile/revolver/guntime/shoot_live_shot(mob/living/user, atom/target, pointblank, message)
	..(user, target, pointblank, message)
	CRASH("mraow")

/obj/item/ammo_box/magazine/internal/shot/improvised/guntime
	ammo_type = /obj/item/ammo_casing/guntime

/obj/item/ammo_casing/guntime
	name = "treat"
	desc = "A tasty treat meant for cats. This one seems loaded with gunpowder..."
	caliber = "cat"
	projectile_type = /obj/item/projectile/guntime

/obj/item/projectile/guntime
	name = "GCAT"
	icon_state = "guntime"
	alwayslog = TRUE

/obj/item/projectile/guntime/on_range()
	playsound(src, 'sound/creatures/cat_meow.ogg', 50, 0.75)
	..()

/obj/item/projectile/guntime/on_hit(atom/target, blocked, hit_zone)
	..(target, blocked, hit_zone)
	playsound(src, 'sound/creatures/cat_meow.ogg', 50, 0.75)
	for(var/obj/item/I in target)
		I.forceMove(get_turf(target))
	qdel(target)
