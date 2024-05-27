/turf/simulated/wall/brick
	icon_state = "brick"
	material = /decl/material/solid/stone/sandstone
	girder_material = null

/turf/simulated/wall/brick/get_dismantle_stack_type()
	return /obj/item/stack/material/brick

/turf/simulated/wall/brick/get_wall_icon()
	return 'icons/turf/walls/brick.dmi'

/turf/simulated/wall/brick/get_dismantle_sound()
	return 'sound/foley/wooden_drop.ogg' // todo

// Subtypes.
/turf/simulated/wall/brick/sandstone
	color = COLOR_GOLD

/turf/simulated/wall/brick/basalt
	material = /decl/material/solid/stone/basalt
	color = COLOR_DARK_GRAY
