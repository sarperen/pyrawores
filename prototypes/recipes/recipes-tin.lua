RECIPE {
    type = "recipe",
    name = "grade-1-tin",
    category = "solid-separator",--pyFE screener
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "ore-tin", amount = 5}
    },
    results = {
        {type = "item", name = "grade-1-tin", amount = 1},
        {type = "item", name = "grade-2-tin", amount = 1, probability = 0.5},
    },
    main_product = "grade-1-tin",
    icon = "__pyrawores__/graphics/icons/ore-tin-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("tin-mk01"):change_category('screener')

RECIPE {
    type = "recipe",
    name = "grade-2-crush",
    category = "crusher",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "grade-2-tin", amount = 1}
    },
    results = {
        {type = "item", name = "grade-1-tin", amount = 1, probability = 0.5},
        {type = "item", name = "stone", amount = 1}
    },
    main_product = "grade-1-tin",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("tin-mk01")

RECIPE {
    type = "recipe",
    name = "grade-3-tin",
    category = "solid-separator",--pyFE screener
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "grade-1-tin", amount = 2},
    },
    results = {
        {type = "item", name = "grade-3-tin", amount = 1},
        {type = "item", name = "tin-ore-rejects", amount = 1, probability = 0.5},
    },
    main_product = "grade-3-tin",
    icon = "__pyrawores__/graphics/icons/grade-1-tin-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("tin-mk02"):change_category('screener')

RECIPE {
    type = "recipe",
    name = "tin-ore-rejects",
    category = "crusher",--pyFE secondary crusher
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "tin-ore-rejects", amount = 1},
    },
    results = {
        {type = "item", name = "grade-1-tin", amount = 1, probability = 0.5},
    },
    main_product = "grade-1-tin",
    icon = "__pyrawores__/graphics/icons/recrush-tin-ore-rejects.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("tin-mk02"):change_category('secondary-crusher')

RECIPE {
    type = "recipe",
    name = "wash-grade-3-tin",
    category = "washer",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "grade-3-tin", amount = 1},
        {type = "fluid", name = "water", amount = 100},
    },
    results = {
        {type = "item", name = "grade-4-tin", amount = 1},
        {type = "fluid", name = "dirty-water", amount = 100},
    },
    main_product = "grade-4-tin",
    icon = "__pyrawores__/graphics/icons/wash-grade-3-tin.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("tin-mk02")

RECIPE {
    type = "recipe",
    name = "ball-grade-4-tin",
    category = "ball-mill",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "grade-4-tin", amount = 1},
    },
    results = {
        {type = "item", name = "tin-dust", amount = 1},
    },
    main_product = "tin-dust",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("tin-mk02")

RECIPE {
    type = "recipe",
    name = "tin-concentrate",
    category = "chemistry", --pyfe jig
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "tin-dust", amount = 1},
        {type = "fluid", name = "mibc", amount = 75},
        {type = "fluid", name = "mibc", amount = 75},
    },
    results = {
        {type = "item", name = "tin-rejects", amount = 1},
        {type = "item", name = "tin-concentrate", amount = 1, probability = 0.2},
    },
    main_product = "tin-concentrate",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("tin-mk03"):change_category('jig')

RECIPE {
    type = "recipe",
    name = "powdered-tin",
    category = "solid-separator",--pyFE screener
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "tin-rejects", amount = 1},
    },
    results = {
        {type = "item", name = "powdered-tin", amount = 1},
        {type = "item", name = "tailings-dust", amount = 1},
    },
    main_product = "powdered-tin",
    icon = "__pyrawores__/graphics/icons/tin-rejects-screening.png",
    icon_size = 32,
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("tin-mk03"):change_category('screener')

RECIPE {
    type = "recipe",
    name = "tin-concentrate-2",
    category = "scrubber",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "sand", amount = 20},
        {type = "fluid", name = "water", amount = 100},
        {type = "fluid", name = "tin-bottom-pulp", amount = 100},
    },
    results = {
        {type = "fluid", name = "dirty-water", amount = 50},
        {type = "item", name = "tin-concentrate", amount = 1, probability = 0.5},
    },
    main_product = "tin-concentrate",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("tin-mk03")

RECIPE {
    type = "recipe",
    name = "tin-concentrate-3",
    category = "chemistry", --pyfe grease table
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "filtration-media", amount = 3},
        {type = "fluid", name = "tin-pulp-01", amount = 100},
        {type = "fluid", name = "heavy-oil", amount = 100}, --pyfe grease
    },
    results = {
        {type = "fluid", name = "lubricant", amount = 50},
        {type = "item", name = "tin-concentrate", amount = 1},
    },
    main_product = "tin-concentrate",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("tin-mk03"):change_category('grease'):replace_ingredient("heavy-oil", "grease")

RECIPE {
    type = "recipe",
    name = "high-tin-concentrate",
    category = "classifier",
    enabled = false,
    energy_required = 3.5,
    ingredients = {
        {type = "item", name = "tin-concentrate", amount = 1},
    },
    results = {
        {type = "item", name = "high-tin-concentrate", amount = 1},
        {type = "item", name = "sand", amount = 1},
    },
    main_product = "high-tin-concentrate",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("tin-mk04")

RECIPE {
    type = "recipe",
    name = "high-tin-mix",
    category = "evaporator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "tin-pulp-03", amount = 100},
    },
    results = {
        {type = "item", name = "high-tin-mix", amount = 1},
    },
    main_product = "high-tin-mix",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("tin-mk04")

RECIPE {
    type = "recipe",
    name = "high-grade-tin",
    category = "solid-separator",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "high-tin-mix", amount = 2},
    },
    results = {
        {type = "item", name = "high-grade-tin", amount = 1},
        {type = "item", name = "grade-4-iron", amount = 1, probability = 0.5},
    },
    main_product = "high-grade-tin",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("tin-mk04")


--SINTER and DRP IMPROVEMENTS

RECIPE {
    type = "recipe",
    name = "reduction-tin",
    category = "drp",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "high-grade-tin", amount = 1},
        {type = "item", name = "sodium-sulfate", amount = 2},
        {type = "fluid", name = "diesel", amount = 50},
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "reduced-tin", amount = 1},
    },
    main_product = "reduced-tin",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("tin-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

RECIPE {
    type = "recipe",
    name = "sinter-tin-1",
    category = "sinter",
    enabled = false,
    energy_required = 5,
    ingredients = {
        {type = "item", name = "high-grade-tin", amount = 1},
        {type = "item", name = "lime", amount = 3},
        {type = "fluid", name = "syngas", amount = 100},
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "sintered-tin", amount = 1},
    },
    main_product = "sintered-tin",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("tin-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

RECIPE {
    type = "recipe",
    name = "sinter-tin-2",
    category = "sinter",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "reduced-tin", amount = 1},
        {type = "item", name = "lime", amount = 3},
        {type = "fluid", name = "syngas", amount = 100},
        --pyfe pressured air
    },
    results = {
        {type = "item", name = "sintered-tin", amount = 2},
    },
    main_product = "sintered-tin",
    subgroup = "py-rawores-recipes",
    order = "q-2"
}:add_unlock("tin-mk04"):add_ingredient({type = "fluid", name = "pressured-air", amount = 100})

--MOLTEN VERSION

RECIPE {
    type = "recipe",
    name = "molten-tin-01",
    category = "eaf",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "tin-dust", amount = 2},
        {type = "item", name = "borax", amount = 3},
    },
    results = {
        {type = "fluid", name = "molten-tin", amount = 10},
    },
    main_product = "molten-tin",
    subgroup = "py-rawores-molten",
    order = "ta"
}:add_unlock("tin-mk02"):add_ingredient({type = "item", name = "graphite", amount =3})

RECIPE {
    type = "recipe",
    name = "molten-tin-02",
    category = "eaf",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "item", name = "tin-concentrate", amount = 1},
        {type = "item", name = "borax", amount = 3},
    },
    results = {
        {type = "fluid", name = "molten-tin", amount = 20},
    },
    main_product = "molten-tin",
    subgroup = "py-rawores-molten",
    order = "ta"
}:add_unlock("tin-mk03"):add_ingredient({type = "item", name = "graphite", amount =3})

RECIPE {
    type = "recipe",
    name = "molten-tin-02-2",
    category = "eaf",
    enabled = false,
    energy_required = 4,
    ingredients = {
         {type = "item", name = "borax", amount = 3},
         {type = "item", name = "high-tin-concentrate", amount = 1},
    },
    results = {
        {type = "fluid", name = "molten-tin", amount = 25},
    },
    main_product = "molten-tin",
    subgroup = "py-rawores-molten",
    order = "ta"
}:add_unlock("tin-mk03"):add_ingredient({type = "item", name = "graphite", amount =3})

RECIPE {
    type = "recipe",
    name = "molten-tin-03",
    category = "eaf",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "high-grade-tin", amount = 1},
        {type = "item", name = "borax", amount = 3},
    },
    results = {
        {type = "fluid", name = "molten-tin", amount = 30},
    },
    main_product = "molten-tin",
    subgroup = "py-rawores-molten",
    order = "ta"
}:add_unlock("tin-mk04"):add_ingredient({type = "item", name = "graphite", amount =3})

RECIPE {
    type = "recipe",
    name = "molten-tin-04",
    category = "eaf",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "reduced-tin", amount = 1},
        {type = "item", name = "borax", amount = 3},
    },
    results = {
        {type = "fluid", name = "molten-tin", amount = 50},
    },
    main_product = "molten-tin",
    subgroup = "py-rawores-molten",
    order = "ta"
}:add_unlock("tin-mk04"):add_ingredient({type = "item", name = "graphite", amount =3})

RECIPE {
    type = "recipe",
    name = "molten-tin-05",
    category = "eaf",
    enabled = false,
    energy_required = 3,
    ingredients = {
        {type = "item", name = "sintered-tin", amount = 1},
        {type = "item", name = "borax", amount = 3},
    },
    results = {
        {type = "fluid", name = "molten-tin", amount = 100},
    },
    main_product = "molten-tin",
    subgroup = "py-rawores-molten",
    order = "ta"
}:add_unlock("tin-mk04"):add_ingredient({type = "item", name = "graphite", amount =3})


--CASTINGS


RECIPE {
    type = "recipe",
    name = "tin-plate-3",
    category = "casting",
    enabled = false,
    energy_required = 4,
    ingredients = {
        {type = "fluid", name = "molten-tin", amount = 100},
        {type = "item", name = "sand-casting", amount = 1},
    },
    results = {
        {type = "item", name = "tin-plate", amount = 20}
    },
    main_product= "tin-plate",
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("tin-mk02")


--INITIAL PLATE


RECIPE {
    type = "recipe",
    name = "tin-plate-1",
    category = "smelting",
    enabled = true,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "ore-tin", amount = 6}
    },
    results = {
        {type = "item", name = "tin-plate", amount = 1}
    },
    --main_product= "glass",
    subgroup = "py-rawores-recipes",
    order = "j"
}

--PLATES

RECIPE {
    type = "recipe",
    name = "tin-plate-2",
    category = "smelting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "grade-1-tin", amount = 1}
    },
    results = {
        {type = "item", name = "tin-plate", amount = 2}
    },
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("tin-mk01")

RECIPE {
    type = "recipe",
    name = "tin-plate-4",
    category = "smelting",
    enabled = false,
    energy_required = 10,
    ingredients = {
        {type = "item", name = "grade-4-tin", amount = 1}
    },
    results = {
        {type = "item", name = "tin-plate", amount = 3}
    },
    subgroup = "py-rawores-recipes",
    order = "j"
}:add_unlock("tin-mk02")