entity_template = {
    name = "yapg_block_blue_activable",
    friendlyname = "[YAPG] Blue activable block",

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
        state = {
            name = "Activated ?",
            component = "platform",
            attribute = "activated",
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
            activated = false,
        },
        ["platformer_hitbox"] = {
            polygon = {
                points = {
                    {
                        x = 0,
                        y = 0
                    },
                    {
                        x = 32,
                        y = 0
                    },
                    {
                        x = 32,
                        y = 32
                    },
                    {
                        x = 0,
                        y = 32
                    },
                }
            }
        },
        ["custom_behavior"] = {
            on_update = function(entity, dt)
                if(platform(entity).activated) then
                    render(entity).current_animation = "activated"
                else
                    render(entity).current_animation = "deactivated"
                end
            end,
        },
        ["render"] = {
            texture = "pack_grass.png",
            current_animation = "deactivated",
            animations = {
                ["deactivated"] = {
                    total_duration = 1,
                    frames = {
                        {
                            rect = { left = 32, top = 128, width = 32, height = 32},
                            relative_duration = 1,
                        },
                    },
                },
                ["activated"] = {
                    total_duration = 1,
                    frames = {
                        {
                            rect = { left = 96, top = 0, width = 32, height = 32},
                            relative_duration = 1,
                        },
                    },
                },
            },
        }
    }
}
