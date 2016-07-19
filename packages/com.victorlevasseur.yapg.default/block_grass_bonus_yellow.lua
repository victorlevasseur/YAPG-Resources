entity_template = {
    name = "yapg_block_grass_bonus_yellow",
    friendlyname = "[YAPG] Grass block Bonus",

	inherits = "yapg_block_grass_top_middle",

    components = {
        ["platform"] = {
            on_hit = function(entity, platformer)
                -- Test if the block has not been hit and if the collision is made with a player
                if render(entity).current_animation == "default" and player(platformer) ~= nil then
                    -- Get some useful positions (the Y bottom coord of the block and the Y top coord of the player's HITBOX)
                    local block_bottom_pos = position(entity).y + position(entity).height
                    local player_top_platformer_hitbox_pos = position(platformer).y + platformer_hitbox(platformer).polygon:get_local_bounding_box().top

                    -- Test if the player hit the block from under
                    if player_top_platformer_hitbox_pos >= block_bottom_pos then
                        render(entity).current_animation = "hit"
                    end
                end
            end,
        },
        ["render"] = {
            animations = {
                ["default"] = {
                    total_duration = 1,
                    frames = {
                        {
                            rect = { left = 64, top = 64, width = 32, height = 32},
                            relative_duration = 1,
                        },
                    },
                },
                ["hit"] = {
                    total_duration = 1,
                    frames = {
                        {
                            rect = { left = 32, top = 64, width = 32, height = 32},
                            relative_duration = 1,
                        },
                    },
                },
            },
        }
    }
}
