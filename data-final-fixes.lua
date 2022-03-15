if  mods["248k"] then
    data:extend({
        {
            name = 'tur_converter_3_recipe',
            type = 'recipe',
            enabled = false,
            main_product = "tur_extreme_torque",
            category = "tur_converter_category",
            ingredients = {
                {type="fluid", name="steam", amount=800, temperature=1000},
            },
            results = {
                {type="fluid", name="steam", amount=410, temperature=750},
                {type="fluid", name="tur_extreme_torque", amount=190, temperature=900},
            },
            result_count = 1,
            energy_required = 1,
            always_show_made_in = true,
        },
    })
    table.insert(data.raw.technology["tur_extreme_torque_tech"].effects, {type ="unlock-recipe", recipe ="tur_converter_3_recipe"})
end