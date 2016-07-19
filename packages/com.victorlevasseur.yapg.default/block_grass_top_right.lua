entity_template = {
    name = "yapg_block_grass_top_right",
    friendlyname = "[YAPG] Grass block Top-Right",

	inherits = "yapg_block_grass_top_middle",

    components = {
        ["render"] = {
            animations = {
                ["default"] = {
                    total_duration = 1,
                    frames = {
                        {
                            rect = { left = 64, top = 0, width = 32, height = 32},
                            relative_duration = 1,
                        },
                    },
                },
            },
        }
    }
}
