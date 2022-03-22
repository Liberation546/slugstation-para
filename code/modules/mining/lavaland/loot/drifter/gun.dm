// TODO: make the pistol, can be summoned via an action tied to the sword maybe
// TODO: pull the sprite of the pistol from the wiki

/obj/item/gun/energy/drifter
	name = "drifter's pistol"
	desc = "A pistol that recharges with sword hits."
	icon_state = "drifter_pistol"
	item_state = "drifter_pistol"
	cell_type = /obj/item/stock_parts/cell/drifter
	fire_sound = pick("drifter_pistol1","drifter_pistol2","drifter_pistol3")
	can_fit_in_turrets = FALSE
	var/sword = null

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

/obj/item/projectile/drifter
	name = "energy shot"
	damage = 10
	damage_type = BURN
