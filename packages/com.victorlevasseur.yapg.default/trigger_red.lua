entity_template = {
    name = "yapg_trigger_red",
    friendlyname = "[YAPG] Red trigger",

    parameters = {
        x = {
            name = "X position",
            component = "position",
            attribute = "x",
        },
        y = {
            name = "Y position",
            component = "position",
            attribute = "y",
        },
    },

    components = {
        ["position"] = {
            x = 0,
            y = 0,
            width = 32,
            height = 32
        },
        ["platform"] = {

        },
        ["collidable"] = {
            polygons = {
                ["trigger"] = {
                    polygon = {
                        points = {
                            {
                                x = 8,
                                y = 16
                            },
                            {
                                x = 24,
                                y = 16
                            },
                            {
                                x = 24,
                                y = 32
                            },
                            {
                                x = 0,
                                y = 32
                            },
                        },
                    },
                    on_collision_begin = function(entity, other)
                        if(player(other) ~= nil) then
                            -- Trigger
                            render(entity).current_animation = "activated"

                            local red_blocks = current_level:get_entities("com.victorlevasseur.yapg.default.yapg_block_red_activable")
                            for k, v in pairs(red_blocks) do
                                platform(v).activated = (not platform(v).activated)
                            end
                        end
                    end,
                    on_collision_end = function(entity, other)
                        if(player(other) ~= nil) then
                            render(entity).current_animation = "deactivated"
                        end
                    end,
                },
            },
        },
        ["platformer_hitbox"] = {
            polygon = {
                points = {
                    {
                        x = 0,
                        y = 32
                    },
                    {
                        x = 6,
                        y = 26
                    },
                    {
                        x = 24,
                        y = 26
                    },
                    {
                        x = 32,
                        y = 32
                    }
                }
            }
        },
        ["render"] = {
            texture = "pack_grass.png",
            current_animation = "deactivated",
            animations = {
                ["deactivated"] = {
                    total_duration = 1,
                    frames = {
                        {
                            rect = { left = 96, top = 128, width = 32, height = 32},
                            relative_duration = 1,
                        },
                    },
                },
                ["activated"] = {
                    total_duration = 1,
                    frames = {
                        {
                            rect = { left = 96, top = 160, width = 32, height = 32},
                            relative_duration = 1,
                        },
                    },
                },
            },
        }
    }
}
