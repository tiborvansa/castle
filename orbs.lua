
----------
--Tools
----------

minetest.register_tool("castle:orb_day", {
	description = "Orb of Midday",
	tiles = {"castle_orb_day.png"},
	inventory_image = "castle_orb_day.png",
	wield_image = "castle_orb_day_weild.png",
	stack_max=1,
	on_use = function(itemstack, user)
   minetest.sound_play("castle_orbs", {pos=pos, loop=false})
			minetest.set_timeofday(0.5)
			minetest.sound_play("castle_birds", {pos=pos, loop=false})
			--1 use per diamond used in crafting :)
			itemstack:add_wear(65535/8)
			return itemstack
	end
})

minetest.register_tool("castle:orb_night",{
 description = "Orb of Midnight",
	tiles = {"castle_orb_night.png"},
	inventory_image = "castle_orb_night.png",
	wield_image = "castle_orb_night_weild.png",
	stack_max=1,
	on_use = function(itemstack, user)
   minetest.sound_play("castle_orbs", {pos=pos, loop=false})
			minetest.set_timeofday(0)
			minetest.sound_play("castle_owl", {pos=pos, loop=false})
			--1 use per diamond used in crafting :)
			itemstack:add_wear(65535/8)
			return itemstack
	end
})

-----------
--Crafting
-----------

minetest.register_craft( {
  output = "castle:orb_day",
  recipe = {
    {"default:diamond", "default:diamond","default:diamond"},
    {"default:diamond", "default:mese_crystal","default:diamond"},
    {"default:diamond", "default:diamond","default:diamond"}
   },
})

minetest.register_craft({
  output = "castle:orb_night",
  recipe = {
   {"default:diamond", "default:diamond","default:diamond"},
   {"default:diamond", "default:obsidian_shard","default:diamond"},
   {"default:diamond", "default:diamond","default:diamond"}
  },
})
