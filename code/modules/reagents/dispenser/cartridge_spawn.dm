/client/proc/spawn_chemdisp_cartridge(size in list("small", "medium", "large"), reagent in decls_repository.get_decl_paths_of_subtype(/decl/material))
	set name = "Spawn Chemical Dispenser Cartridge"
	set category = "Admin"

	var/obj/item/chems/chem_disp_cartridge/C
	switch(size)
		if("small") C = new /obj/item/chems/chem_disp_cartridge/small(usr.loc)
		if("medium") C = new /obj/item/chems/chem_disp_cartridge/medium(usr.loc)
		if("large") C = new /obj/item/chems/chem_disp_cartridge(usr.loc)
	C.add_to_reagents(reagent, C.volume)
	var/decl/material/R = reagent
	C.setLabel(initial(R.name))
	log_and_message_admins("spawned a [size] reagent container containing [reagent]")
