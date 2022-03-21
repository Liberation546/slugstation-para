// TODO: make the outfit and sword, hud can be done later
// https://discord.com/channels/826892312977473616/827315126969171968/955489825325219851
// TODO: pull the sprite of the sword from the wiki

/obj/item/melee/drifter
    name = "hard light sword"
    desc = "A sword made of blue light. How did this get here?"
    force = 10
    var/obj/item/gun/energy/drifter/gun


/obj/item/melee/drifter/New()
    ..()
    if(!gun)
        var/obj/item/gun/energy/drifter/pistol = new(src.loc)
        gun = pistol // if the warp cube can do it, so can i
        pistol.sword = src

/obj/item/melee/drifter/attack(mob/living/M, mob/living/user, def_zone)
    if(istype(M, /mob/living))
        gun.add_charge()
