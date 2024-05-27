/decl/hierarchy/outfit/job/shelltooth/cargo
	l_ear = /obj/item/radio/headset/headset_cargo
	name = "shelltooth - Job - Cargo technician"
	uniform = /obj/item/clothing/under/cargotech
	id_type = /obj/item/card/id/shelltooth/cargo
	pda_type = /obj/item/modular_computer/pda/cargo
	backpack_contents = list(/obj/item/crowbar = 1, /obj/item/storage/ore = 1)
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_EXTENDED_SURVIVAL
	suit = /obj/item/clothing/suit/storage/toggle/redcoat/service/officiated
	yinglet_suit_service = TRUE
/decl/hierarchy/outfit/job/shelltooth/cargo/Initialize()
	. = ..()
	BACKPACK_OVERRIDE_ENGINEERING

/decl/hierarchy/outfit/job/shelltooth/bartender
	l_ear = /obj/item/radio/headset/headset_service
	name = "shelltooth - Job - Bartender"
	uniform = /obj/item/clothing/under/bartender
	id_type = /obj/item/card/id/shelltooth/bartender
	pda_type = /obj/item/modular_computer/pda
	suit = /obj/item/clothing/suit/storage/toggle/redcoat/service/officiated
	head = /obj/item/clothing/head/chefhat
	yinglet_suit_service = TRUE

/decl/hierarchy/outfit/job/shelltooth/janitor
	l_ear = /obj/item/radio/headset/headset_service
	name = "shelltooth - Job - Janitor"
	uniform = /obj/item/clothing/under/janitor
	id_type = /obj/item/card/id/shelltooth/janitor
	pda_type = /obj/item/modular_computer/pda
	suit = /obj/item/clothing/suit/storage/toggle/redcoat/service/officiated
	yinglet_suit_service = TRUE

/decl/hierarchy/outfit/job/shelltooth/librarian
	l_ear = /obj/item/radio/headset/headset_service
	name = "shelltooth - Job - Librarian"
	uniform = /obj/item/clothing/under/yinglet/yinglibrarian
	id_type = /obj/item/card/id/shelltooth/librarian
	pda_type = /obj/item/modular_computer/pda
	suit = /obj/item/clothing/suit/storage/toggle/redcoat/service/officiated
	yinglet_suit_service = TRUE

//cards
/obj/item/card/id/shelltooth/cargo
	name = "identification card"
	desc = "A card issued to cargo staff."
	detail_color = COLOR_BROWN

/obj/item/card/id/shelltooth/bartender
	desc = "A card issued to kitchen staff."

/obj/item/card/id/shelltooth/janitor
	desc = "A card issued to custodial staff."

/obj/item/card/id/shelltooth/librarian
	desc = "A card issued to the station librarian."
