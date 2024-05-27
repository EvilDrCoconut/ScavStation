/datum/event/prison_break/medical
	areaType = list(/area/shelltooth/medical)

/datum/event/prison_break/science
	areaType = list(/area/shelltooth/science)

/datum/event/prison_break/station
	areaType = list(/area/shelltooth/security)

/area/shelltooth
	name = "\improper shelltooth"
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambigen12.ogg')
	icon = 'maps/shelltooth/shelltooth_areas.dmi'
	icon_state = "default"

/area/shelltooth/supply_dock
	name = "Supply Shuttle Dock"
	icon_state = "yellow"
	base_turf = /turf/space

/area/shelltooth/supply
	name = "Supply Shuttle"
	icon_state = "shuttle3"
	req_access = list(access_cargo)
	requires_power = 0

//Planet
/*/area/shelltooth/planet
	icon_state = "green"
	area_flags = AREA_FLAG_PLANET*/

//Hallways
/area/shelltooth/hall
	icon_state = "white"
	area_flags = AREA_FLAG_HALLWAY

/area/shelltooth/hall/n
	name = "\improper Forward Hallway"

// first floor hallways

/area/shelltooth/hall/s1
	name = "\improper L1 Aft Hallway"

//  second floor hallways

/area/shelltooth/hall/w2
	name = "\improper L2 Port Hallway"

/area/shelltooth/hall/e2
	name = "\improper L2 Starboard Hallway"

// third floor hallways

/area/shelltooth/hall/s3
	name = "\improper L3 Aft Hallway"

/area/shelltooth/hall/n3
	name = "\improper L3 Forward Hallway"

//Maintenance
/area/shelltooth/maint
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_MAINTENANCE
	req_access = list(access_maint_tunnels)
	turf_initializer = /decl/turf_initializer/maintenance
	icon_state = "orange"
	secure = TRUE

// First floor maint

/area/shelltooth/maint/westatmos
	name = "\improper West Atmos Maintenance"

/area/shelltooth/maint/eastatmos
	name = "\improper East Atmos Maintenance"

// /area/shelltooth/maint/l1nw
//	name = "\improper Level One North West Maintenance"

/area/shelltooth/maint/l1ne
	name = "\improper Level One North East Maintenance"

/area/shelltooth/maint/l1central
	name = "\improper Level One Central Maintenance"

// Second Floor Maint

/area/shelltooth/maint/l2centraln
	name = "\improper Level Two Central North Maintenance"

/area/shelltooth/maint/l2central
	name = "\improper Level Two Central Maintenance"

/area/shelltooth/maint/l2centrals
	name = "\improper Level Two Central South Maintenance"

/area/shelltooth/maint/secmaint
	name = "\improper Security Maintenance"

/area/shelltooth/maint/hydromaint
	name = "\improper Hydro Maintenance"

/area/shelltooth/maint/l2underpass
	name = "\improper Level Two Maintenance Underpass"

// Third Floor Maint

/area/shelltooth/maint/l3nw
	name = "\improper Level Three Northwest Maintenance"

/area/shelltooth/maint/l3ne
	name = "\improper Level Three Northeast Maintenance"

/area/shelltooth/maint/l3central
	name = "\improper Level Three Central Maintenance"

/area/shelltooth/maint/l3sw
	name = "\improper Level Three Southwest Maintenance"

/area/shelltooth/maint/l3se
	name = "\improper Level Three Southeast Maintenance"

// Fourth Floor Maint
/area/shelltooth/maint/l4central
	name = "\improper Level Four Central Maintenance"

/area/shelltooth/maint/l4overpass
	name = "\improper Level Four Maintenance Overpass"

// Fourth Floor Deck

/area/shelltooth/observation_deck
	name = "\improper Observation Deck"
	icon_state = "white"

/area/shelltooth/science2nddeck
	name = "\improper 2nd Floor Research & Development Laboratory"
	req_access = list(access_robotics)
	secure = TRUE
	icon_state = "purple"

/area/shelltooth/sciencetesting
	name = "\improper 2nd Floor Testing Rooms"
	req_access = list(access_robotics)
	secure = TRUE
	icon_state = "purple"

//Maint Bypasses

/area/shelltooth/maint/sebypass
	name = "\improper Southeast Maintenance Shaft"

/area/shelltooth/maint/nebypass
	name = "\improper Northeast Maintenance Shaft"

//Departments
/area/shelltooth/hop
	name = "\improper Lieutenant's Office"
	req_access = list(access_hop)
	secure = TRUE
	icon_state = "dark_blue"

/area/shelltooth/janitor
	name = "\improper Custodial Closet"
	req_access = list(access_janitor)
	icon_state = "janitor"

/area/shelltooth/trash
	name = "\improper Trash Room"
	req_access = list(access_janitor)
	icon_state = "janitor"

/area/shelltooth/cargo
	name = "\improper Cargo Bay"
	req_access = list(access_mining)
	icon_state = "brown"
	secure = TRUE
/area/shelltooth/mining
	name = "\improper Mineral Processing"
	req_access = list(access_mining)
	icon_state = "mining_production"
	secure = TRUE

/area/shelltooth/cargo/f2
	name = "\improper Cargo Bay"
	req_access = list(access_mining)
	icon_state = "brown"
	secure = TRUE

/area/shelltooth/cargo/f3
	name = "\improper Cargo Bay"
	req_access = list(access_mining)
	icon_state = "brown"
	secure = TRUE

/area/shelltooth/bridge
	name = "\improper Bridge"
	req_access = list(access_heads)
	secure = TRUE
	icon_state = "dark_blue"

/area/shelltooth/bridge/vault
	name = "\improper Vault"
	req_access = list(access_heads_vault)
	ambience = list()
	icon_state = "green"

/area/shelltooth/security
	name = "\improper Security Office"
	req_access = list(access_security)
	secure = TRUE
	icon_state = "red"
	area_flags = AREA_FLAG_SECURITY

/area/shelltooth/detective
	name = "\improper Detective Office"
	req_access = list(access_forensics_lockers)
	secure = TRUE
	icon_state = "dark_blue"

/area/shelltooth/court
	name = "\improper Court Room"
	req_access =list(access_lawyer)
	secure = TRUE
	icon_state = "pink"

/area/shelltooth/library
	name = "\improper Library"
	icon_state = "LIB"

/area/shelltooth/atmospherics
	name = "\improper Atmospherics"
	req_access = list(access_atmospherics)
	icon_state = "ATMOS"

/area/shelltooth/science
	name = "\improper Research & Development Laboratory"
	req_access = list(access_robotics)
	secure = TRUE
	icon_state = "purple"

/area/shelltooth/eva
	name = "\improper EVA Storage"
	req_access = list(access_eva)
	secure = TRUE
	icon_state = "dark_blue"

/area/shelltooth/medical
	name = "\improper Infirmary"
	req_access = list(access_medical)
	icon_state = "light_blue"
	secure = TRUE

/area/shelltooth/cryo
	name = "\improper Medical Cryogenics"
	req_access = list()
	icon_state = "green"
	secure = FALSE

/area/shelltooth/dorms
	name = "\improper Dormatories"
	req_access = list()
	icon_state = "red"
	secure = FALSE

/area/shelltooth/hydro
	name = "\improper Hydroponics"
	req_access = list(access_hydroponics)
	icon_state = "green"

/area/shelltooth/cafe // no access requirement to get in. inner doors need access kitchen
	name = "\improper Cafeteria"
	icon_state = "red"
	secure = TRUE

/area/shelltooth/engine
	name = "Engineering"
	req_access = list(access_engine_equip)
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambieng1.ogg')
	secure = TRUE
	icon_state = "yellow"

/area/shelltooth/engineroom
	name = "\improper Engine Room"
	req_access = list(access_engine)
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambieng1.ogg')
	secure = TRUE
	icon_state = "brown"

/area/shelltooth/enginecontrol
	name = "\improper Engine Control Room"
	req_access = list(access_engine)
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambieng1.ogg')
	secure = TRUE
	icon_state = "red"

/area/shelltooth/telecomms
	name = "\improper Telecommunications Control"
	req_access = list(list(access_engine),list(access_heads)) //can get inside to monitor but not actually access anything important. Inner doors have tcomm access
	ambience = list('sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/signal.ogg','sound/ambience/sonar.ogg')
	secure = TRUE
	icon_state = "light_blue"

/area/shelltooth/yinglet_rep
	name = "\improper Tradehouse Representative Chamber"
	req_access = list(access_lawyer)
	icon_state = "brown"

/area/shelltooth/Arrival
	name = "\improper Arrival Shuttle" // I hate this ugly thing
	icon_state = "white"
	requires_power = 0

/area/shelltooth/shuttle/outgoing
	name = "\improper Science Shuttle"
	icon_state = "shuttle"

//satellite
/area/shelltooth/ai_sat
	name = "\improper Satellite"
	secure = TRUE
	turf_initializer = /decl/turf_initializer/maintenance
	icon_state = "brown"

/area/shelltooth/ai_core
	name = "\improper AI Core"
	req_access = list(access_ai_upload)
	secure = TRUE
	icon_state = "green"

/area/shelltooth/ai_upload
	name = "\improper AI Upload Control"
	secure = TRUE
	req_access = list(access_ai_upload)
	icon_state = "light_blue"

/datum/goal/scav_hoard_junk
	valid_areas = list(/area/shelltooth/yinglet_rep)

/area/shuttle/escape_shuttle
	name = "\improper Emergency Shuttle"
	icon_state = "shuttle"

//Elevator

/area/turbolift
	name = "\improper Elevator"
	icon_state = "shuttle"
	requires_power = 0
	dynamic_lighting = TRUE
	sound_env = STANDARD_STATION
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED
	ambience = list(
		'sound/ambience/ambigen3.ogg','sound/ambience/ambigen4.ogg','sound/ambience/ambigen5.ogg','sound/ambience/ambigen6.ogg','sound/ambience/ambigen7.ogg','sound/ambience/ambigen8.ogg','sound/ambience/ambigen9.ogg','sound/ambience/ambigen10.ogg','sound/ambience/ambigen11.ogg','sound/ambience/ambigen12.ogg'
	)

	arrival_sound = null
	lift_announce_str = null

/area/turbolift/alert_on_fall(var/mob/living/carbon/human/H)
	if(H.client && SSpersistence.elevator_fall_shifts > 0)
		SSwebhooks.send(WEBHOOK_ELEVATOR_FALL, list("text" = "We managed to make it [SSpersistence.elevator_fall_shifts] shift\s without someone falling down an elevator shaft."))
		SSpersistence.elevator_fall_shifts = -1

/area/turbolift/l1
	name = "Station Level 1"
	base_turf = /turf/simulated/floor

/area/turbolift/l2
	name = "Station Level 2"
	base_turf = /turf/simulated/open

/area/turbolift/l3
	name = "Station Level 3"
	base_turf = /turf/simulated/open

/area/turbolift/l1p
	name = "Station Level 1"
	base_turf = /turf/simulated/floor

/area/turbolift/l2p
	name = "Station Level 2"
	base_turf = /turf/simulated/open

/area/turbolift/l3p
	name = "Station Level 3"
	base_turf = /turf/simulated/open