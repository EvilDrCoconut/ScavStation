// the underfloor wiring terminal for the APC
// autogenerated when an APC is placed
// all conduit connects go to this object instead of the APC
// using this solves the problem of having the APC in a wall yet also inside an area

/obj/machinery/power/terminal
	name = "terminal"
	icon_state = "term"
	desc = "It's an underfloor wiring terminal for power equipment."
	level = 1
	layer = EXPOSED_WIRE_TERMINAL_LAYER
	var/obj/item/stock_parts/power/terminal/master
	anchored = 1

	uncreated_component_parts = null
	construct_state = /decl/machine_construction/noninteractive // Axiliary entity; all interactions pass through owner machine part instead.

/obj/machinery/power/terminal/Initialize()
	. = ..()
	var/turf/T = src.loc
	if(level==1) hide(!T.is_plating())

/obj/machinery/power/terminal/proc/master_machine()
	var/obj/machinery/machine = master && master.loc
	if(istype(machine))
		return machine

/obj/machinery/power/terminal/hide(var/do_hide)
	if(do_hide && level == 1)
		layer = WIRE_TERMINAL_LAYER
	else
		reset_plane_and_layer()

/obj/machinery/power/terminal/connect_to_network()
	. = ..()
	var/obj/machinery/machine = master_machine()
	if(machine)
		machine.power_change()

/obj/machinery/power/terminal/disconnect_from_network()
	. = ..()
	var/obj/machinery/machine = master_machine()
	if(machine)
		machine.power_change()