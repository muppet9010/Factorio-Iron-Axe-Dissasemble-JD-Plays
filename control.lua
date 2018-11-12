ItemCrafted = function(event)
	script.on_nth_tick(1, nil)
	local player = game.players[event.player_index]
	local basicMiningTool = player.get_inventory(defines.inventory.player_tools).find_item_stack("basic-mining-tool")
	if basicMiningTool ~= nil then
		basicMiningTool.durability = 1000000
	end
end

QueueItemCrafted = function(event)
	if event.item_stack.name ~= "basic-mining-tool" then return end
	script.on_nth_tick(1, function() ItemCrafted(event) end)
end

script.on_event(defines.events.on_player_crafted_item, QueueItemCrafted)