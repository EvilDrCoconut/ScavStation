/obj/abstract/map_data/valSal_port
	height = 2

/datum/level_data/player_level/valSal_port
	use_global_exterior_ambience = FALSE
	base_area = null
	base_turf = /turf/floor/dirt
	abstract_type = /datum/level_data/player_level/valSal_port
	ambient_light_level = 1
	ambient_light_color = "#f3e6ca"
	strata = /decl/strata/valSal_port
	exterior_atmosphere = list(
		/decl/material/gas/oxygen =   MOLES_O2STANDARD,
		/decl/material/gas/nitrogen = MOLES_N2STANDARD
	)
	daycycle_type = /datum/daycycle/valSal_port
	daycycle_id = "daycycle_valSal_port"
	template_edge_padding = 0 // we use a strictly delineated subarea, no need for this guard
	var/submap_budget   = 0
	var/submap_category = null
	var/submap_area
	var/list/mobs_to_spawn = list()

/datum/daycycle/valSal_port
	cycle_duration = 2 HOURS // 1 hour of daylight, 1 hour of night

// Randomized time of day to start at.
/datum/daycycle/valSal_port/New()
	time_in_cycle = rand(cycle_duration)
	..()

/datum/level_data/player_level/valSal_port/get_subtemplate_areas(template_category, blacklist, whitelist)
	return submap_area ? (islist(submap_area) ? submap_area : list(submap_area)) : null

/datum/level_data/player_level/valSal_port/get_subtemplate_budget()
	return submap_budget

/datum/level_data/player_level/valSal_port/get_subtemplate_category()
	return submap_category

/datum/level_data/player_level/valSal_port/after_generate_level()
	. = ..()
	if(length(mobs_to_spawn))
		for(var/list/mob_category in mobs_to_spawn)
			var/list/mob_types = mob_category[1]
			var/mob_turf  = mob_category[2]
			var/mob_count = mob_category[3]
			var/sanity = 1000
			while(mob_count && sanity)
				sanity--
				var/turf/place_mob_at = locate(rand(level_inner_min_x, level_inner_max_x), rand(level_inner_min_y, level_inner_max_y), level_z)
				if(istype(place_mob_at, mob_turf) && !(locate(/mob/living) in place_mob_at))
					var/mob_type = pickweight(mob_types)
					new mob_type(place_mob_at)
					mob_count--
					CHECK_TICK

/datum/level_data/player_level/valSal_port/grassland
	name = "Shaded Hills - Grassland"
	level_id = "valSal_port_grassland"
	level_generators = list(
		/datum/random_map/automata/cave_system/valSal_port,
		/datum/random_map/noise/ore/poor,
		/datum/random_map/noise/forage/valSal_port/grassland
	)
	connected_levels = list(
		"valSal_port_woods"     = NORTH,
		"valSal_port_swamp"     = SOUTH,
		"valSal_port_downlands" = EAST
	)
	submap_budget = 5
	submap_category = MAP_TEMPLATE_CATEGORY_SH_GRASSLAND
	submap_area = /area/valSal_port/outside/poi

	mobs_to_spawn = list(
		list(
			list(
				/mob/living/simple_animal/passive/mouse        = 9,
				/mob/living/simple_animal/passive/rabbit       = 3,
				/mob/living/simple_animal/passive/rabbit/brown = 3,
				/mob/living/simple_animal/passive/rabbit/black = 3,
				/mob/living/simple_animal/opossum              = 5
			),
			/turf/floor/grass,
			10
		)
	)


/datum/level_data/player_level/valSal_port/swamp
	name = "Shaded Hills - Swamp"
	level_id = "valSal_port_swamp"
	connected_levels = list(
		"valSal_port_grassland" = NORTH
	)
	level_generators = list(
		/datum/random_map/noise/valSal_port/swamp,
		/datum/random_map/noise/forage/valSal_port/swamp
	)
	submap_budget = 5
	submap_category = MAP_TEMPLATE_CATEGORY_SH_SWAMP
	submap_area = /area/valSal_port/outside/swamp/poi

	mobs_to_spawn = list(
		list(
			list(
				/mob/living/simple_animal/passive/mouse        = 6,
				/mob/living/simple_animal/passive/rabbit       = 2,
				/mob/living/simple_animal/passive/rabbit/brown = 2,
				/mob/living/simple_animal/passive/rabbit/black = 2,
				/mob/living/simple_animal/frog                 = 3,
				/mob/living/simple_animal/frog/brown           = 2,
				/mob/living/simple_animal/frog/yellow          = 2,
				/mob/living/simple_animal/frog/purple          = 1
			),
			/turf/floor/grass,
			5
		),
		list(
			list(
				/mob/living/simple_animal/frog                 = 3,
				/mob/living/simple_animal/frog/brown           = 2,
				/mob/living/simple_animal/frog/yellow          = 2,
				/mob/living/simple_animal/frog/purple          = 1
			),
			/turf/floor/mud,
			10
		)
	)

/datum/level_data/player_level/valSal_port/woods
	name = "Shaded Hills - Woods"
	level_id = "valSal_port_woods"
	connected_levels = list(
		"valSal_port_grassland" = SOUTH
	)
	level_generators = list(
		/datum/random_map/noise/valSal_port/woods,
		/datum/random_map/noise/forage/valSal_port/woods
	)
	submap_budget = 5
	submap_category = MAP_TEMPLATE_CATEGORY_SH_WOODS
	submap_area = /area/valSal_port/outside/woods/poi

	mobs_to_spawn = list(
		list(
			list(
				/mob/living/simple_animal/passive/mouse        = 6,
				/mob/living/simple_animal/passive/rabbit       = 2,
				/mob/living/simple_animal/passive/rabbit/brown = 2,
				/mob/living/simple_animal/passive/rabbit/black = 2,
				/mob/living/simple_animal/opossum              = 2
			),
			/turf/floor/grass,
			10
		),
		list(
			list(
				/mob/living/simple_animal/passive/deer         = 1
			),
			/turf/floor/grass,
			5
		)
	)

/datum/level_data/player_level/valSal_port/downlands
	name = "Shaded Hills - Downlands"
	level_id = "valSal_port_downlands"
	level_generators = list(
		/datum/random_map/noise/valSal_port/woods,
		/datum/random_map/noise/forage/valSal_port/grassland
	)
	connected_levels = list(
		"valSal_port_grassland" = WEST
	)
	submap_budget = 5
	submap_category = MAP_TEMPLATE_CATEGORY_SH_DOWNLANDS
	submap_area = /area/valSal_port/outside/downlands/poi

/datum/level_data/player_level/valSal_port/caverns
	name = "Shaded Hills - Caverns"
	level_id = "valSal_port_caverns"
	connected_levels = list(
		"valSal_port_dungeon" = EAST
	)
	submap_budget = 5
	submap_category = MAP_TEMPLATE_CATEGORY_SH_CAVERNS
	submap_area = /area/valSal_port/caves/deep/poi
	level_generators = list(
		/datum/random_map/automata/cave_system/valSal_port,
		/datum/random_map/noise/ore/rich
	)
	base_turf = /turf/floor/rock/basalt

/datum/level_data/player_level/valSal_port/dungeon
	name = "Shaded Hills - Dungeon"
	level_id = "valSal_port_dungeon"
	connected_levels = list(
		"valSal_port_caverns" = WEST
	)
	submap_budget = 5
	submap_category = MAP_TEMPLATE_CATEGORY_SH_DUNGEON
	submap_area = /area/valSal_port/caves/dungeon/poi
	base_turf = /turf/floor/rock/basalt

/obj/abstract/level_data_spawner/valSal_port_grassland
	level_data_type = /datum/level_data/player_level/valSal_port/grassland

/obj/abstract/level_data_spawner/valSal_port_swamp
	level_data_type = /datum/level_data/player_level/valSal_port/swamp

/obj/abstract/level_data_spawner/valSal_port_woods
	level_data_type = /datum/level_data/player_level/valSal_port/woods

/obj/abstract/level_data_spawner/valSal_port_downlands
	level_data_type = /datum/level_data/player_level/valSal_port/downlands

/obj/abstract/level_data_spawner/valSal_port_caverns
	level_data_type = /datum/level_data/player_level/valSal_port/caverns

/obj/abstract/level_data_spawner/valSal_port_dungeon
	level_data_type = /datum/level_data/player_level/valSal_port/dungeon
