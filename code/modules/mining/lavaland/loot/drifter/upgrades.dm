/*
/obj/item/stack/drifter/gearbit
	name = "gearbit"
	desc = "A strange piece of technology. Can be packaged into gearbit packs."
	max_amount = 8

/obj/item/stack/gearbit/drifter/pack
	name = "gearbit pack"
	desc = "A bundle of odd tech. Can be used to forge upgrades."
	recipes = list ( \
		new /datum/stack_recipe("ammo upgrade", /obj/item/upgrade/ammo, 3, time = 10), \
		null,
	)

/obj/item/upgrade
	name = "upgrade"
	desc = "This is not supposed to appear. Use this on a hard light sword to convert it to gearbit packs."
	var/upgrade = null

/obj/item/upgrade/ammo
	name = "ammo upgrade"
	desc = "Increases the maximum charges available."
	upgrade = "ammo"
