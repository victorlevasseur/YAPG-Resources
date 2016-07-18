entity_template = {
    name = "yapg_block_grass_top_middle",
    friendlyname = "[YAPG] Grass block Top-Middle",

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
        ["render"] = {
            texture = "yapg/pack_grass.png",
            current_animation = "default",
            animations = {
                ["default"] = {
                    total_duration = 1,
                    frames = {
                        {
                            rect = { left = 32, top = 0, width = 32, height = 32},
                            relative_duration = 1,
                        },
                    },
                },
            },
        }
    }
}
