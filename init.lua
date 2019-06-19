 
minetest.register_tool("admintools:pick", {
	description = "Admin Pickaxe",
	inventory_image = "admintools_pick.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=0.0, [2]=0.0, [3]=0.0}, uses=450, maxlevel=3},
		},
		damage_groups = {fleshy=10},
	},
})

minetest.register_tool("admintools:shovel", {
	description = "Admin Shovel",
	inventory_image = "admintools_shovel.png",
	wield_image = "admintools_shovel.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=0.0, [2]=0.0, [3]=0.0}, uses=300, maxlevel=3},
		},
		damage_groups = {fleshy=4},
	},
})

minetest.register_tool("admintools:axe", {
	description = "Admin Axe",
	inventory_image = "admintools_axe.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=0.0, [2]=0.0, [3]=0.0}, uses=450, maxlevel=2},
		},
		damage_groups = {fleshy=7},
	},
})

minetest.register_tool("admintools:universal_tool", {
	description = "Universal Admin Tool",
	inventory_image = "admintools_universal.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=0.0, [2]=0.0, [3]=0.0}, uses=1500, maxlevel=2},
			crumbly = {times={[1]=0.0, [2]=0.0, [3]=0.0}, uses=1500, maxlevel=3},
			cracky = {times={[1]=0.0, [2]=0.0, [3]=0.0}, uses=1500, maxlevel=3},
                        snappy={times={[1]=0.0, [2]=0.00, [3]=0.0}, uses=1500, maxlevel=3},
		},
		damage_groups = {fleshy=8},
	},
})

--craftings

minetest.register_craft({
	output = "admintools:pick",
	recipe = {
		{"default:mese", "default:mese", "default:mese"},
		{"", "default:diamondblock", ""},
		{"", "default:diamondblock", ""}
	}
})
 
minetest.register_craft({
	output = "admintools:shovel",
	recipe = {
		{"", "default:mese", ""},
		{"", "default:diamondblock", ""},
		{"", "default:diamondblock", ""}
	}
})

minetest.register_craft({
	output = "admintools:axe",
	recipe = {
		{"default:mese", "default:mese", ""},
		{"default:mese", "default:diamondblock", ""},
		{"", "default:diamondblock", ""}
	}
})

minetest.register_craft({
	output = "admintools:universal_tool",
	recipe = {
		{"admintools:pick", "admintools:shovel", "admintools:axe"},
		{"", "default:diamondblock", ""},
		{"", "default:diamondblock", ""}
	}
})

--aliases for /give

minetest.register_alias("admintools:pick", "adminpick")
minetest.register_alias("admintools:shovel", "adminshovel")
minetest.register_alias("admintools:axe", "adminaxe")
minetest.register_alias("admintools:universal_tool", "universaladmintool")
