/obj/item/clothing/head/yinglet
	name = "small hood"
	desc = "A yinglet-sized cloth hood and mantle. It has ear holes."
	icon = 'mods/valsalia/icons/clothing/head/hood_yinglet.dmi'
	flags_inv = BLOCK_HEAD_HAIR
	bodytype_equip_flags = BODY_FLAG_YINGLET
	paint_color = COLOR_BEIGE
	markings_state_modifier = "-detail"
	yinglet_icon = null

/obj/item/clothing/head/yinglet/matriarch
	name = "matriarch hood"
	desc = "The well-crafted and heavily decorated hood of an enclave matriarch."
	icon = 'mods/valsalia/icons/clothing/head/hood_matriarch.dmi'
	paint_color = null

/obj/item/clothing/head/yinglet/scout
	name = "scout hood"
	desc = "A layered hood and mantle worn by enclave scouts."
	paint_color = "#917756"
	markings_color = "#698a71"

/obj/item/clothing/head/yinglet/pekhat
	name = "sunhat"
	desc = "A wooden sunhat common among yinglets."
	icon = 'mods/valsalia/icons/clothing/head/pekhat.dmi'
	paint_color = null

/obj/item/clothing/head/yinglet/pekhat/painted
	name = "painted sunhat"
	desc = "A wooden sunhat common among yinglets. This one is painted with a smile."
	icon = 'mods/valsalia/icons/clothing/head/pekhat_painted.dmi'

/obj/item/clothing/head/yinglet/fancy
	name = "yinglet fancy hat"
	desc = "A blue hat with a white feather. A fancy hat for a fancy lad."
	icon = 'mods/valsalia/icons/clothing/head/fancy_hat_yinglet.dmi'

/obj/item/clothing/head/cakehat
	yinglet_icon = 'mods/valsalia/icons/clothing/head/cakehat.dmi'

/obj/item/clothing/head/cakehat/get_mob_flame_overlay(var/image/overlay, var/bodytype)
	var/image/I = ..()
	if(I && bodytype == BODYTYPE_YINGLET)
		I.pixel_y = 3
	return I
