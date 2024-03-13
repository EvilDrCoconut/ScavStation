/turf/floor/natural/seafloor
	name = "sea floor"
	desc = "A thick layer of silt and debris from above."
	icon = 'icons/turf/exterior/seafloor.dmi'
	icon_edge_layer = EXT_EDGE_SEAFLOOR
	material = /decl/material/solid/sand
	is_fundament_turf = TRUE
	var/detail_decal

/turf/floor/natural/seafloor/flooded
	flooded = /decl/material/liquid/water
	color = COLOR_LIQUID_WATER

/turf/floor/natural/seafloor/Initialize()
	if(prob(20))
		LAZYADD(decals, image("asteroid[rand(0,9)]", 'icons/turf/mining_decals.dmi'))
	. = ..()
