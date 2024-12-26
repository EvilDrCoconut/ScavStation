/area/valSal_port/outside/downlands
	name = "Downlands"

/area/valSal_port/outside/downlands/poi
	name = "Deep Downlands"

/area/valSal_port/inn
	name = "\improper Inn"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM
	turf_initializer = /decl/turf_initializer/spiderwebs

/decl/turf_initializer/combo/kitchen_webs
	initialisers = list(
		/decl/turf_initializer/spiderwebs,
		/decl/turf_initializer/kitchen
	)

/area/valSal_port/inn/kitchen
	name = "\improper Inn Kitchen"
	turf_initializer = /decl/turf_initializer/combo/kitchen_webs

/area/valSal_port/inn/porch
	name = "\improper Inn Porch"
	interior_ambient_light_modifier = -0.3 // night is pitch-black on the porch
	sound_env = FOREST

/area/valSal_port/stable
	name = "\improper Stable"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM
	turf_initializer = /decl/turf_initializer/spiderwebs

/area/valSal_port/farmhouse
	name = "\improper Farmhouse"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM
	turf_initializer = /decl/turf_initializer/spiderwebs

/area/valSal_port/farmhouse/porch
	name = "\improper Farmhouse Porch"
	interior_ambient_light_modifier = -0.3 // night is pitch-black on the porch
	sound_env = FOREST

/area/valSal_port/slaughterhouse
	name = "\improper Slaughterhouse"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM
	turf_initializer = /decl/turf_initializer/spiderwebs

/area/valSal_port/storehouse
	name = "\improper Storehouse"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM
	turf_initializer = /decl/turf_initializer/spiderwebs

/area/valSal_port/general_store
	name = "\improper General Store"
	fishing_failure_prob = 100
	fishing_results = list()
	sound_env = ROOM
	turf_initializer = /decl/turf_initializer/spiderwebs

/area/valSal_port/general_store/porch
	name = "\improper General Store Porch"
	interior_ambient_light_modifier = -0.3 // night is pitch-black on the porch
	sound_env = FOREST

/area/valSal_port/shrine
	name = "\improper Shrine"
	fishing_failure_prob = 100
	fishing_results = list()
	area_flags = AREA_FLAG_HOLY
	sound_env = ROOM
	turf_initializer = /decl/turf_initializer/spiderwebs

/area/valSal_port/shrine/kitchen
	name = "\improper Shrine Kitchen"
	turf_initializer = /decl/turf_initializer/combo/kitchen_webs

/area/valSal_port/outside/shrine
	name = "\improper Shrine Grounds"

/area/valSal_port/caves/dungeon
	name = "\improper Deep Dungeon"

/area/valSal_port/caves/dungeon/inn
	name = "\improper Root Cellar"

/area/valSal_port/caves/dungeon/poi
	name = "\improper Deepest Dungeon"
