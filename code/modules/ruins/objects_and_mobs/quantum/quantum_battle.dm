/obj/structure/quantum
	name = "strange looking tower"
	desc = "A vaguely skull-shaped tower."

/obj/structure/quantum/attack_hand(mob/user)
	if(!active)
		var/safety = alert(user, "You think this might be a bad idea...", "Knock on the tower?", "Proceed", "Abort")
		if(safety == "Abort" || !in_range(src, user) || !src || active || user.incapacitated())
			return
		user.visible_message("<span class='warning'>[user] knocks on [src]...</span>", "<span class='boldannounce'>You tentatively knock on [src]...</span>")
		playsound(user.loc, 'sound/effects/shieldbash.ogg', 100, 1)
		sleep(50)
	

/obj/structure/quantum/broken
	desc = "A vaguely skull-shaped tower. This one looks broken."

/obj/structure/quantum/broken/attack_hand(mob/user)
	return