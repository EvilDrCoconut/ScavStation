/turf/floor/natural/shrouded
	name = "packed sand"
	icon = 'icons/turf/exterior/shrouded.dmi'
	desc = "Sand that has been packed in to solid earth."
	dirt_color = "#3e3960"
	possible_states = 8
	material = /decl/material/solid/sand
	is_fundament_turf = TRUE

/turf/floor/natural/shrouded/tar
	name = "tar"
	desc = "A pool of viscous and sticky tar."
	movement_delay = 12
	reagent_type = /decl/material/liquid/tar
	height = -(FLUID_SHALLOW)
