// TODO: make the pistol, can be summoned via an action tied to the sword maybe

/obj/item/gun/energy/drifter
    name = "hard light pistol"
    desc = "A pistol that uses hard light as projectiles."
    cell_type = /obj/item/stock_parts/cell/drifter/pistol
    can_fit_in_turrets = FALSE

/obj/item/gun/energy/drifter/detailed_examine()
	return "This weapon gains ammo by hitting living things with the hard light sword."

/obj/item/gun/energy/drifter/emp_act(severity)
    return

/obj/item/stock_parts/cell/drifter/pistol
    name = "hard light pistol cell"
    desc = "You probably shouldn't be seeing this."
    charge = 600
	maxcharge = 600

/obj/item/ammo_casing/drifter/pistol
    fire_sound = null

/obj/item/projectile/drifter/pistol
    damage_type = BURN