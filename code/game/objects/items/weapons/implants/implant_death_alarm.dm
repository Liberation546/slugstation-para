/obj/item/implant/death_alarm
	name = "death alarm implant"
	desc = "An alarm which monitors host vital signs and transmits a radio message upon death."
	var/mobname = "Will Robinson"
	activated = 0
	var/static/list/stealth_areas = typecacheof(list(/area/syndicate_mothership, /area/shuttle/syndicate_elite))

/obj/item/implant/death_alarm/get_data()
	var/dat = {"<b>Implant Specifications:</b><BR>
				<b>Name:</b> Nanotrasen \"Profit Margin\" Class Employee Lifesign Sensor<BR>
				<b>Life:</b> Activates upon death.<BR>
				<b>Important Notes:</b> Alerts crew to crewmember death.<BR>
				<HR>
				<b>Implant Details:</b><BR>
				<b>Function:</b> Contains a compact radio signaler that triggers when the host's lifesigns cease.<BR>
				<b>Special Features:</b> Alerts crew to crewmember death.<BR>
				<b>Integrity:</b> Implant will occasionally be degraded by the body's immune system and thus will occasionally malfunction."}
	return dat

/obj/item/implant/death_alarm/Destroy()
	UnregisterSignal(imp_in, COMSIG_MOB_DEATH)
	return ..()

/obj/item/implant/death_alarm/activate(cause) // Death signal sends name followed by the gibbed / not gibbed check
	var/mob/M = imp_in
	var/area/t = get_area(M)

	var/obj/item/radio/headset/a = new /obj/item/radio/headset(src)
	a.follow_target = M

	switch(cause)
		if("gib")
			a.autosay("[mobname] has died-zzzzt in-in-in...", "[mobname]'s Death Alarm")
			qdel(src)
		if("emp")
			var/name = prob(50) ? t.name : pick(SSmapping.teleportlocs)
			a.autosay("[mobname] has died in [name]!", "[mobname]'s Death Alarm")
		else
			if(is_type_in_typecache(t, stealth_areas))
				//give the syndies a bit of stealth
				a.autosay("[mobname] has died in Space!", "[mobname]'s Death Alarm")
			else
				a.autosay("[mobname] has died in [t.name]!", "[mobname]'s Death Alarm")
			qdel(src)

	qdel(a)

/obj/item/implant/death_alarm/emp_act(severity)			//for some reason alarms stop going off in case they are emp'd, even without this
	activate("emp")	//let's shout that this dude is dead

/obj/item/implant/death_alarm/implant(mob/target)
	if(..())
		mobname = target.real_name
		RegisterSignal(target, COMSIG_MOB_DEATH, /obj/item/implant/death_alarm.proc/check_gibbed_activate)
		return 1
	return 0

/obj/item/implant/death_alarm/proc/check_gibbed_activate(datum/source, gibbed)
	if(gibbed)
		activate("gib")
	else
		activate("death")

/obj/item/implant/death_alarm/removed(mob/target)
	if(..())
		UnregisterSignal(target, COMSIG_MOB_DEATH)
		return 1
	return 0
