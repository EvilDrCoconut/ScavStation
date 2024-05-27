/datum/computer_file/program/merchant/shelltooth
	read_access = list()

/obj/machinery/computer/modular/preset/merchant/shelltooth
	default_software = list(
		/datum/computer_file/program/merchant/shelltooth,
		/datum/computer_file/program/email_client,
		/datum/computer_file/program/wordprocessor,
		/datum/computer_file/program/supply
	)

/datum/map/shelltooth
	lobby_tracks = list(/decl/music_track/zazie)
