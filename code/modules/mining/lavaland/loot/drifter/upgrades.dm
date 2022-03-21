GLOBAL_LIST_INIT(rod_recipes, list ( \
	new /datum/stack_recipe("grille", /obj/structure/grille, 2, time = 10, one_per_turf = 1, on_floor = 1), \
	new /datum/stack_recipe("table frame", /obj/structure/table_frame, 2, time = 10, one_per_turf = 1, on_floor = 1), \
	null,
	))

/obj/item/stack/gearbit
    name = "gearbit"
    desc = "A strange piece of technology. Can be packaged into gearbit packs."
    max_amount = 4

/obj/item/stack/gearbit/pack
    name = "gearbit pack"
    desc = "A bundle of odd tech. Can be used to forge upgrades."
    recipes = list()

/obj/item/upgrade
    name = "upgrade"
    desc = "This is not supposed to appear. Use this on a hard light sword to convert it to gearbits."

/obj/item/upgrade/ammo
    name = "ammo upgrade"
    desc = "Increases the maximum charges available."