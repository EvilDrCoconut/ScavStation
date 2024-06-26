/datum/unit_test/items_test
	name = "ITEMS: Items Shall Pass Test Battery"
	var/list/obj_test_instances = list()
	var/list/failures = list()

///Logs a failure entry for the given test and item type.
/datum/unit_test/items_test/proc/report_failure(var/datum/item_unit_test/test, var/item_type, var/failure_text)
	failures += "'[test.shortened_type_name()]', '[item_type]':'[failure_text]'"

/datum/unit_test/items_test/start_test()
	// Instantiate all spawnable items
	for(var/path in subtypesof(/obj/item))
		try
			var/obj/item/I = path
			if(!TYPE_IS_SPAWNABLE(I))
				continue
			I = new path
			if(QDELETED(I))
				log_warning("Item type '[path]' got destroyed during test init.")
				continue
			obj_test_instances[path] = I
		catch(var/exception/e)
			failures += "Runtime during creation of [path]: [EXCEPTION_TEXT(e)]"

	// Create tests + sort by type name so the test can run in alphabetical order
	var/list/constant_tests = list()
	for(var/test_path in subtypesof(/datum/item_unit_test/constant))
		ADD_SORTED(constant_tests, new test_path(src), /proc/cmp_name_or_type_asc)
	var/list/volatile_tests = list()
	for(var/test_path in subtypesof(/datum/item_unit_test/volatile))
		ADD_SORTED(volatile_tests, new test_path(src), /proc/cmp_name_or_type_asc)

	// Run tests on each object.
	for(var/objpath in obj_test_instances)
		//Run constant tests first
		for(var/datum/item_unit_test/T in constant_tests)
			T.run_test(obj_test_instances[objpath])
		//Run volatile tests second
		for(var/datum/item_unit_test/T in volatile_tests)
			T.run_test(obj_test_instances[objpath])

	if(length(failures))
		fail("[length(failures)] issue\s with item [length(failures) > 1? "were" : "was"] found:\n[jointext(failures, "\n")]")
	else
		pass("All items passed the tests.")

	//Clean up
	QDEL_LIST_ASSOC_VAL(obj_test_instances)
	return TRUE

/////////////////////////////////////////////////////////
// Item Unit Test
/////////////////////////////////////////////////////////
/datum/item_unit_test
	var/datum/unit_test/items_test/IT

/datum/item_unit_test/New(var/datum/unit_test/items_test/_IT)
	. = ..()
	IT = _IT

/datum/item_unit_test/proc/run_test(var/obj/item/I)
	return !QDELETED(I)

///Returns a shortened version of the test name for displaying in the logs
/datum/item_unit_test/proc/shortened_type_name()
	return copytext( "[type]", length("[parent_type]") + 2) //skip the / after the parent type

//Checks that don't modify the objects
/datum/item_unit_test/constant

//Checks that modify the objects
/datum/item_unit_test/volatile

/////////////////////////////////////////////////////////
// Additional miscellaneous item tests below.
/////////////////////////////////////////////////////////

// Not really an items test in an inheritance sense, but here for organization.
/datum/unit_test/paint_kits_shall_have_existing_states
	name = "ITEMS: Paint Kits Shall Have Existing Icon States"
	var/mech_decal_icon = 'icons/mecha/mech_decals.dmi'
	var/static/list/blend_modes = list(
		BLEND_OVERLAY,
		BLEND_ADD,
		BLEND_MULTIPLY,
		BLEND_SUBTRACT
	)
// TODO: add other kits in here for validation somehow.
/datum/unit_test/paint_kits_shall_have_existing_states/start_test()
	var/list/failures
	for(var/kit_type in typesof(/obj/item/kit/paint))
		var/obj/item/kit/paintkit = kit_type
		if(TYPE_IS_ABSTRACT(paintkit))
			continue
		var/kit_state = initial(paintkit.new_state)
		if(!kit_state)
			LAZYADD(failures, "kit type [kit_type] has no decal state defined.")
		else if(!check_state_in_icon(kit_state, mech_decal_icon))
			LAZYADD(failures, "kit type [kit_type] decal state '[kit_state]' not present in '[mech_decal_icon]'")
		else
			var/kit_blend = initial(paintkit.new_blend)
			if(!(kit_blend in blend_modes))
				LAZYADD(failures, "kit type [kit_type] decal blend '[kit_blend || "NULL"]' not present in blend mode list")

	if(length(failures))
		fail("[length(failures)] type\s had problems:\n[jointext(failures, "\n")]")
	else
		pass("No kit types had errors.")
	return 1
