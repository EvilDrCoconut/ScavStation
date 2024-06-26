/decl/emote/audible/synth
	key = "beep"
	emote_message_3p = "$USER$ beeps."
	emote_sound = 'sound/machines/twobeep.ogg'

/decl/emote/audible/synth/mob_can_use(mob/living/user, assume_available = FALSE)
	return ..() && user.isSynthetic()

/decl/emote/audible/synth/ping
	key = "ping"
	emote_message_3p = "$USER$ pings."
	emote_sound = 'sound/machines/ping.ogg'

/decl/emote/audible/synth/buzz
	key = "buzz"
	emote_message_3p = "$USER$ buzzes."
	emote_sound = 'sound/machines/buzz-sigh.ogg'

/decl/emote/audible/synth/confirm
	key = "confirm"
	emote_message_3p = "$USER$ emits an affirmative blip."
	emote_sound = 'sound/machines/synth_yes.ogg'

/decl/emote/audible/synth/deny
	key = "deny"
	emote_message_3p = "$USER$ emits a negative blip."
	emote_sound = 'sound/machines/synth_no.ogg'

/decl/emote/audible/synth/security
	key = "law"
	emote_message_3p = "$USER$ shows $USER_THEIR$ legal authorization barcode."
	emote_message_3p_target = "$USER$ shows $TARGET$ $USER_THEIR$ legal authorization barcode."
	emote_sound = 'sound/voice/biamthelaw.ogg'

/decl/emote/audible/synth/security/mob_can_use(mob/living/user, assume_available = FALSE)
	var/mob/living/silicon/robot/robot_user = user
	if(!istype(robot_user))
		return FALSE
	return istype(robot_user.module, /obj/item/robot_module/security) && ..()

/decl/emote/audible/synth/security/halt
	key = "halt"
	emote_message_3p = "$USER$'s speakers skreech, \"Halt! Security!\"."
	emote_sound = 'sound/voice/halt.ogg'
