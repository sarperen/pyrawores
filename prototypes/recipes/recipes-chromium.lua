RECIPE {
    type = "recipe",
    name = "grade-1-chromite",
    category = "crusher",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "ore-chromium", amount = 5}
    },
    results = {
        {type = "item", name = "grade-1-chromite", amount = 2},
        {type = "item", name = "stone", amount = 1, probability = 0.5}
    },
    main_product = "grade-1-chromite",
    icon = "__pyrawores__/graphics/icons/crusher-chromium.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("chromium-mk01")

RECIPE {
    type = "recipe",
    name = "grade-3-chromite",
    category = "impact-crusher",
    enabled = false,
    energy_required = 1,
    ingredients = {
        {type = "item", name = "grade-1-chromite", amount = 2}
    },
    results = {
        {type = "item", name = "grade-3-chromite", amount = 1},
        {type = "item", name = "grade-2-chromite", amount = 2},
    },
    main_product = "grade-3-chromite",
    icon = "__pyrawores__/graphics/icons/grade-3-chromite.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("chromium-mk01")

RECIPE {
    type = "recipe",
    name = "grade-2-chromite-beneficiation",
    category = "solid-separator", --pyFE screener
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "grade-2-chromite", amount = 1}
    },
    results = {
        {type = "item", name = "grade-1-chromite", amount = 1, probability = 0.5},
        {type = "item", name = "gravel", amount = 1, probability = 0.5},
    },
    main_product = "grade-1-chromite",
    icon = "__pyrawores__/graphics/icons/chromite-2-grade-screener.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("chromium-mk01")

RECIPE {
    type = "recipe",
    name = "grade-4-chromite",
    category = "chemistry",--pyFE hydrocyclone
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "grade-3-chromite", amount = 1},
        {type = "fluid", name = "water", amount = 100},
    },
    results = {
        {type = "item", name = "grade-4-chromite", amount = 1},
    },
    main_product = "grade-4-chromite",
    icon = "__pyrawores__/graphics/icons/grade-4-chromite.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("chromium-mk02")