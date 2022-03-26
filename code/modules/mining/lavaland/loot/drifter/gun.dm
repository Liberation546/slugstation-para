// TODO: hitscan projectiles and railgun

/obj/item/gun/energy/drifter
	name = "drifter's pistol"
	desc = "A pistol that recharges with sword hits."
	icon_state = "drifter_pistol"
	item_state = "drifter_pistol"
	resistance_flags = LAVA_PROOF | FIRE_PROOF | UNACIDABLE | ACID_PROOF
	cell_type = /obj/item/stock_parts/cell/drifter
	ammo_type = list(/obj/item/ammo_casing/energy/drifter)
	fire_sound = "drifter_pistol1"
	fire_sound_pitch = FALSE
	can_fit_in_turrets = FALSE
	var/sword = null

/obj/item/gun/energy/drifter/shoot_live_shot(mob/living/user, atom/target)
	src.fire_sound = pick('sound/weapons/gunshots/drifter_pistol1.ogg','sound/weapons/gunshots/drifter_pistol2.ogg','sound/weapons/gunshots/drifter_pistol3.ogg')
	..(user, target)
/obj/item/gun/energy/drifter/upgraded
	desc = "A pistol that recharges with sword hits. The capacity has been improved."
	cell_type = /obj/item/stock_parts/cell/drifter/upgraded

/obj/item/gun/energy/drifter/detailed_examine()
	return "This weapon gains charges by hitting living things with the hard light sword."

/obj/item/gun/energy/drifter/emp_act(severity)
	return

/obj/item/gun/energy/drifter/proc/add_charge()
	cell.give(100)

/obj/item/stock_parts/cell/drifter
	name = "drifter pistol cell"
	desc = "You probably shouldn't be seeing this."
	charge = 600
	maxcharge = 600

/obj/item/stock_parts/cell/drifter/upgraded
	name = "upgraded drifter pistol cell"
	desc = "You probably shouldn't be seeing this."
	charge = 900
	maxcharge = 900

/obj/item/ammo_casing/energy/drifter
	projectile_type = /obj/item/projectile/drifter
	fire_sound = null

/obj/item/projectile/drifter
	name = "energy shot"
	icon_state = "drifter_pistol"
	damage = 20
	damage_type = BURN
