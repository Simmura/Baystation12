// HATS. OH MY WHAT A FINE CHAPEAU, GOOD SIR.
/obj/item/clothing/head
	name = "head"
	icon = 'hats.dmi'
	body_parts_covered = HEAD
	var/list/allowed = list()

/obj/item/clothing/head/cakehat
	name = "cakehat"
	desc = "It is a cakehat!"
	icon_state = "cake0"
	var/onfire = 0.0
	var/status = 0
	flags = FPRINT|TABLEPASS|HEADSPACE|HEADCOVERSEYES
	var/fire_resist = T0C+1300	//this is the max temp it can stand before you start to cook. although it might not burn away, you take damage

/obj/item/clothing/head/caphat
	name = "Captain's hat"
	icon_state = "captain"
	desc = "It's good being the king."
	flags = FPRINT|TABLEPASS
	item_state = "caphat"

/obj/item/clothing/head/centhat
	name = "Cent. Comm. hat"
	icon_state = "centcom"
	desc = "It's even better to be the emperor."
	flags = FPRINT|TABLEPASS
	item_state = "centhat"

/obj/item/clothing/head/deathsquad/beret
	name = "officer's beret"
	desc = "An armored beret commonly used by special operations officers."
	icon_state = "beret_badge"
	flags = FPRINT|TABLEPASS
	armor = list(melee = 65, bullet = 55, laser = 35,energy = 20, bomb = 30, bio = 30, rad = 30)


/obj/item/clothing/head/powdered_wig
	name = "powdered wig"
	desc = "A powdered wig."
	icon_state = "pwig"
	item_state = "pwig"

/obj/item/clothing/head/that
	name = "Top hat"
	desc = "An amish looking hat."
	icon_state = "tophat"
	item_state = "that"
	flags = FPRINT|TABLEPASS


/obj/item/clothing/head/chefhat
	name = "Chef's Hat"
	icon_state = "chef"
	item_state = "chef"
	desc = "The commander in chef's head wear."
	flags = FPRINT | TABLEPASS

/obj/item/clothing/head/redcoat
	name = "Redcoat hat"
	icon_state = "redcoat"
	desc = "I guess it's a redhead."
	flags = FPRINT | TABLEPASS

/obj/item/clothing/head/mailman
	name = "Mailman Hat"
	icon_state = "mailman"
	desc = "Right-on-time mail service head wear."
	flags = FPRINT | TABLEPASS

/obj/item/clothing/head/plaguedoctorhat
	name = "Plague doctor's hat"
	desc = "Once used by Plague doctors. Now useless."
	icon_state = "plaguedoctor"
	flags = FPRINT | TABLEPASS
	permeability_coefficient = 0.01

/obj/item/clothing/head/beret
	name = "beret"
	desc = "A beret, a mime's favorite headwear."
	icon_state = "beret"
	flags = FPRINT | TABLEPASS


// CHUMP HELMETS: COOKING THEM DESTROYS THE CHUMP HELMET SPAWN.

/obj/item/clothing/head/helmet/cueball
	name = "cueball helmet"
	desc = "A large, featureless white orb mean to be worn on your head. How do you even see out of this thing?"
	icon_state = "cueball"
	flags = FPRINT|TABLEPASS|SUITSPACE|HEADCOVERSEYES|HEADCOVERSMOUTH|BLOCKHAIR
	item_state="cueball"

/obj/item/clothing/head/secsoft
	name = "Soft Cap"
	desc = "A baseball hat in tasteful red."
	icon_state = "secsoft"
	flags = FPRINT|TABLEPASS|HEADCOVERSEYES
	item_state = "helmet"

/obj/item/clothing/head/syndicatefake
	name = "red space helmet replica"
	icon_state = "syndicate"
	item_state = "syndicate"
	desc = "A plastic replica of a syndicate agent's space helmet, you'll look just like a real murderous syndicate agent in this! This is a toy, it is not made for use in space!"
	see_face = 0.0
	flags = FPRINT | TABLEPASS | BLOCKHAIR

/obj/item/clothing/head/helmet/swat
	name = "swat helmet"
	desc = "Used by highly trained Swat Members."
	icon_state = "swat"
	flags = FPRINT | TABLEPASS | SUITSPACE | HEADSPACE | HEADCOVERSEYES | BLOCKHAIR
	item_state = "swat"
	armor = list(melee = 80, bullet = 60, laser = 50,energy = 25, bomb = 50, bio = 10, rad = 0)

/obj/item/clothing/head/helmet/thunderdome
	name = "Thunderdome helmet"
	desc = "Let the battle commence!"
	icon_state = "thunderdome"
	flags = FPRINT | TABLEPASS | SUITSPACE | HEADSPACE | HEADCOVERSEYES | BLOCKHAIR
	item_state = "thunderdome"
	armor = list(melee = 80, bullet = 60, laser = 50,energy = 10, bomb = 25, bio = 10, rad = 0)



/obj/item/clothing/head/helmet/welding
	name = "welding helmet"
	desc = "A head-mounted face cover designed to protect the wearer completely from space-arc eye."
	icon_state = "welding"
	flags = FPRINT | TABLEPASS | SUITSPACE | HEADCOVERSEYES | HEADCOVERSMOUTH
	see_face = 0.0
	item_state = "welding"
	protective_temperature = 1300
	m_amt = 3000
	g_amt = 1000
	var/up = 0
	armor = list(melee = 10, bullet = 5, laser = 10,energy = 5, bomb = 10, bio = 5, rad = 10)



/obj/item/clothing/head/helmet/that
	name = "Sturdy Top hat"
	desc = "An amish looking armored top hat."
	icon_state = "tophat"
	item_state = "that"
	flags = FPRINT|TABLEPASS
	armor = list(melee = 0, bullet = 0, laser = 2,energy = 2, bomb = 0, bio = 0, rad = 0)

/obj/item/clothing/head/helmet/greenbandana
	name = "Green Bandana"
	desc = "A green bandana with some fine nanotech lining."
	icon_state = "greenbandana"
	item_state = "greenbandana"
	flags = FPRINT|TABLEPASS
	armor = list(melee = 5, bullet = 5, laser = 5,energy = 5, bomb = 15, bio = 15, rad = 15)

/obj/item/clothing/head/helmet/riot
	name = "Riot Helmet"
	desc = "A helmet specifically designed to protect against close range attacks."
	icon_state = "riot"
	item_state = "helmet"
	flags = FPRINT|TABLEPASS|SUITSPACE|HEADCOVERSEYES
	armor = list(melee = 82, bullet = 15, laser = 5,energy = 5, bomb = 5, bio = 2, rad = 0)

/obj/item/clothing/head/helmet/cap
	name = "Captain's cap"
	desc = "For irresponsible Captains."
	icon_state = "capcap"
	flags = FPRINT|TABLEPASS|SUITSPACE
	armor = list(melee = 0, bullet = 0, laser = 2,energy = 2, bomb = 0, bio = 0, rad = 0)

/obj/item/clothing/head/chaplain_hood
	name = "Chaplain's hood"
	desc = "A hood that covers the head. Keeps you warm during the space winters."
	icon_state = "chaplain_hood"
	flags = FPRINT|TABLEPASS|HEADSPACE|HEADCOVERSEYES|BLOCKHAIR

/obj/item/clothing/head/hasturhood
	name = "Hastur's Hood"
	desc = "This hood is unspeakably stylish"
	icon_state = "hasturhood"
	flags = FPRINT|TABLEPASS|HEADSPACE|HEADCOVERSEYES|BLOCKHAIR

/obj/item/clothing/head/nursehat
	name = "Nurse Hat"
	desc = "For quick identification of trained medical personnel."
	icon_state = "nursehat"
	flags = FPRINT|TABLEPASS