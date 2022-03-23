/obj/item/drifter/medkit
	name = "medkit"
	desc = "A stimpack that fully heals the user's wounds."
	force = 0

/obj/item/drifter/medkit/attack_hand(mob/user)
	. = ..()
	var/obj/item/clothing/under/drifter/outfit = user.w_uniform
	if(!outfit)
		user.to_chat("<span class=warning>Something stops you from using it. Might be best to give it to someone in a red cloak.</span>")
		return
	user.rejuvenate()
