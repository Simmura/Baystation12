mob/living/carbon/verb/give()
	set category = "IC"
	set name = "Give"
	set src in view(1)
	if(src.stat == 2 || usr.stat == 2|| src.client == null)
		return
	if(src == usr)
		usr << "I feel stupider, suddenly."
		return
	var/obj/item/I
	if(!usr.hand && usr.r_hand == null)
		usr << "You don't have anything in your right hand to give to [src.name]"
		return
	if(usr.hand && usr.l_hand == null)
		usr << "You don't have anything in your left hand to give to [src.name]"
		return
	if(usr.hand)
		I = usr.l_hand
	else if(!usr.hand)
		I = usr.r_hand
	if(!I)
		return
	var/obj/item/weapon/T = new(usr.loc)
	if(!src.loc.Enter(T))
		usr << "Can't reach him"
		del(T)
		return
	del(T)
	if(src.r_hand == null)
		switch(alert(src,"[usr.name] wants to give you \a [I.name]?",,"Yes","No"))
			if("Yes")
				if(!check_can_reach(usr,src))
					usr << "You need to keep in reaching distance."
					src << "[usr.name] moved too far away."
					return
				if((usr.hand && usr.l_hand != I) || (!usr.hand && usr.r_hand != I))
					usr << "You need to keep the item in your active hand."
					src << "[usr.name] seem to have given up on giving \the [I.name] to you."
					return
				if(src.r_hand != null)
					if(src.l_hand == null)
						usr.drop_item(I)
						src.l_hand = I
					else
						usr << "Their hands are full."
						return
				else
					usr.drop_item(I)
					src.r_hand = I
				I.loc = src
				I.layer = 20
				I.add_fingerprint(src)
				src.update_clothing()
				usr.update_clothing()
				action_message(src,"[usr.name] handed \the [I.name] to [src.name].")
			if("No")
				action_message(src,"[usr.name] tried to hand [I.name] to [src.name] but [src.name] didn't want it.")
	else if(src.l_hand == null)
		switch(alert(src,"[src.name] wants to give you \a [I.name]?",,"Yes","No"))
			if("Yes")
				if(!check_can_reach(usr,src))
					usr << "You need to keep in reaching distance."
					src << "[usr.name] moved too far away."
					return
				if((usr.hand && usr.l_hand != I) || (!usr.hand && usr.r_hand != I))
					usr << "You need to keep the item in your active hand."
					src << "[usr.name] seem to have given up on giving \the [I.name] to you."
					return
				if(src.l_hand != null)
					if(src.r_hand == null)
						usr.drop_item(I)
						src.r_hand = I
					else
						usr << "Their hands are full."
						return
				else
					usr.drop_item(I)
					src.l_hand = I
				I.loc = src
				I.layer = 20
				I.add_fingerprint(src)
				src.update_clothing()
				usr.update_clothing()
				action_message(src,"[usr.name] handed \the [I.name] to [src.name].")
			if("No")
				action_message(src,"[usr.name] tried to hand [I.name] to [src.name] but [src.name] didn't want it.")
	else
		usr << "[src.name]\s hands are full."

proc/action_message(var/mob/living/carbon/A,var/message)
	if (message != "")
		if (1 & 1)
			for (var/mob/O in viewers(A.loc, null))
				O.show_message(message, 1)
		else if (1 & 2)
			for (var/mob/O in hearers(A.loc, null))
				O.show_message(message, 1)
	else if (message != "")
		if (1 & 1)
			for (var/mob/O in viewers(A, null))
				O.show_message(message, 1)
		else if (1 & 2)
			for (var/mob/O in hearers(A, null))
				O.show_message(message, 1)