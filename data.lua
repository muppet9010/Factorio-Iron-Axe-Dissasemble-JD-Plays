require("constants")

data:extend({
	{
		type = "mining-tool",
		name = "basic-mining-tool",
		localised_description = {"item-description.basic-mining-tool"},
		icon = graphicsModName .. "/graphics/icons/basic-mining-tool.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		durability = 9007199254740992,
		subgroup = "tool",
		order = "a[mining]-a[iron-axe]1",
		speed = 2.5,
		stack_size = 20
	},
	{
		type = "item",
		name = "iron-axe-handle",
		localised_description = {"item-description.iron-axe-handle"},
		icon = graphicsModName .. "/graphics/icons/iron-axe-handle.png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		fuel_value = "4MJ",
		fuel_category = "chemical",
		subgroup = "raw-resource",
		order = "a[raw-wood]",
		stack_size = 100
	},
	{
		type = "item",
		name = "iron-axe-head",
		localised_description = {"item-description.iron-axe-head"},
		icon = graphicsModName .. "/graphics/icons/iron-axe-head.png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "other",
		order = "zzzzz",
		stack_size = 100
	},



	{
		type = "recipe",
		name = "basic-mining-tool",
		category = "crafting",
		subgroup = "tool",
		order = "a[mining]-a[iron-axe]1",
		icon = graphicsModName .. "/graphics/icons/basic-mining-tool-recipe.png",
		icon_size = 32,
		localised_description = {"item-description.basic-mining-tool-recipe"},
		ingredients = {{"iron-axe", 1}},
		results = {
			{type = "item", name = "basic-mining-tool", amount = 1},
			{type = "item", name = "iron-axe-handle", amount = 1},
			{type = "item", name = "iron-axe-head", amount = 1}
		},
	}
})