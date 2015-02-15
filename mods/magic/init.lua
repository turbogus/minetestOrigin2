--[[
	Magic by turbogus
	Mod to use de potion of potions and potions pack
]]--

-- Moon stone
-- drop by oerkki, use to make base potion
minetest.register_craftitem("magic:moon_stone", {
	description = "Moon Stone",
	wield_image = "mone_stone.png",
	inventory_image = "moon_stone.png",
})

-- Nether stone
-- drop by Dungeons master, use to upgrade your potion to level II
minetest.register_craftitem("magic:nether_stone", {
	description = "Nether Stone",
	wield_image = "nether_stone.png",
	inventory_image = "nether_stone.png",
})

-- Base potion
-- the first potion to make all the other
minetest.register_craftitem("magic:potion_base", {
	description = "Base Potion",
	wield_image = "potion_base.png",
	inventory_image = "potion_base.png",
})
minetest.register_craft({
	output = "magic:potion_base",
	recipe = {
		{"bucket:bucket_water"},
		{"magic:moon_stone"},
		{"vessels:glass_bottle"},
	},
	replacements = {
		{"magic:press", "magic:press"},
	},
})

--******************************************************************

-- Anti gravity I
minetest.register_craft({
		output = "potionspack:antigravity",
		recipe = {
			{"group:wool"},
			{"magic:potion_base"},
		}
	})

-- Anti gravity II
minetest.register_craft({
		output = "potionspack:antigravityii",
		recipe = {
			{"magic:nether_stone"},
			{"potionspack:antigravity"},
		}	
	})

-- Speed I
minetest.register_craft({
		output = "potionspack:speed",
		recipe = {
			{"bushes:sugar"},
			{"magic:potion_base"},
		}
	})

-- Speed II
minetest.register_craft({
		output = "potionspack:speedii",
		recipe = {
			{"magic:nether_stone"},
			{"potionspack:speed"},
		}
})

-- inversion
minetest.register_craft({
		output = "potionspack:inversion",
		recipe = {
			{"default:gravel"},
			{"magic:potion_basic"},
		},
})

-- confusion
minetest.register_craft({
		output = "potionspack:confusion",
		recipe = {
			{"group:sand"},
			{"magic:potion_base"},
		}
	})

-- random
minetest.register_craft({
		output = "potionspack:whatwillthisdo",
		recipe = {
			{"default:snowblock"},
			{"magic:potion_base"},
		}
	})

-- health I
minetest.register_craft({
		output = "potionspack:healthi",
		recipe = {
			{"default:apple"},
			{"magic:potion_base"},
		}	
})

-- health II
minetest.register_craft({
		output = "potionspack:healthii",
		recipe = {
			{"magic:nether_stone"},
			{"potionspack:healthi"},
		}	
})

-- harming I
minetest.register_craft({
		output = "potionspack:harmingi",
		recipe = {
			{"default:torch"},
			{"magic:potion_base"},
		}
	})

-- harming II
minetest.register_craft({
		output = "potionspack:harmingii",
		recipe = {
			{"magic:nether_stone"},
			{"potionspack:harmingi"},
		}
	})
