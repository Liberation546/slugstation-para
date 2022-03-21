// TODO: make the pistol, can be summoned via an action tied to the sword maybe
// TODO: pull the sprite of the pistol from the wiki

/obj/item/gun/energy/drifter
    name = "hard light pistol"
    desc = "A pistol that uses hard light as projectiles."
    cell_type = /obj/item/stock_parts/cell/drifter
    can_fit_in_turrets = FALSE
    var/sword = null

/obj/item/gun/energy/drifter/detailed_examine()
	return "This weapon gains charges by hitting living things with the hard light sword."

/obj/item/gun/energy/drifter/emp_act(severity)
    return

/obj/item/gun/energy/drifter/add_charge()
    cell.give(100)

/obj/item/stock_parts/cell/drifter
    name = "hard light pistol cell"
    desc = "You probably shouldn't be seeing this."
    charge = 600
	maxcharge = 600

/obj/item/stock_parts/cell/drifter/upgraded
    name = "upgraded hard light pistol cell"
    desc = "You probably shouldn't be seeing this."
    charge = 900
	maxcharge = 900

/obj/item/ammo_casing/drifter
    projectile_type = /obj/item/projectile/drifter
    /fire_sound = null

/obj/item/projectile/drifter
    damage_type = BURN
