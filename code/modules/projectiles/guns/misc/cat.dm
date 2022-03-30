/obj/item/gun/magazine/guntime
	name = "Guntime"
	desc = "Who the fuck weaponized Runtime?"
	materials = null
	fire_sound = null //FIXME: replace with runtime's meows
	fire_sound_text = "cat"


/obj/item/gun/magazine/guntime/proc/shoot_live_shot(mob/living/user, atom/target, pointblank, message)
	..(user, target, pointblank, message)
	CRASH("mraow")

/obj/item/ammo_casing/guntime
	name = "treat"
	desc = "A tasty treat meant for cats. This one seems loaded with gunpowder..."
	projectile_type = /obj/item/projectile/guntime
	
/obj/item/projectile/guntime
	name = "GCAT"
	alwayslog = TRUE

/obj/item/projectile/guntime/on_range()
	//TODO: make it meow when it reaches max range
	..()

/obj/item/projectile/guntime/on_hit(atom/target, blocked, hit_zone)
	..(target, blocked, hit_zone)
	for(var/obj/item/I in target)
		I.forceMove(get_turf(target))
	if(istype(target, /mob/living))
		target.death()
		gib(target)
	else if(istype(target, /turf/simulated/wall))
		ChangeTurf(/turf/simulated/floor/plating)
	else
		qdel(target)