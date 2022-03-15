local function sprite(name)
    return '__turbinesplusplus__/ressources/'..name
end
--turbines
local tur_super_turbine_entity = util.table.deepcopy(data.raw.generator["steam-turbine"])
    tur_super_turbine_entity.name = "tur_super_turbine_entity"
    tur_super_turbine_entity.fluid_usage_per_tick = 1
    tur_super_turbine_entity.burns_fluid = false
    tur_super_turbine_entity.scale_fluid_usage = false
    tur_super_turbine_entity.maximum_temperature = 750
    tur_super_turbine_entity.minable.result = "tur_super_turbine_item"
    tur_super_turbine_entity.energy_source.usage_priority = "secondary-output"
    tur_super_turbine_entity.fluid_box.filter = "tur_super_torque"
    tur_super_turbine_entity.max_power_output = "20MW"
    tur_super_turbine_entity.next_upgrade = nil
    tur_super_turbine_entity.horizontal_animation = {
        --filename = sprite('tur_super_turbine_entity_animation_horizontal.png'),
        filename = sprite('tur_super_turbine_entity_animation_horizontal.png'),
        width = 512,
        height = 256,
        line_length = 3,
        scale = 0.34,
        lines_per_file = 3,
        frame_count = 9,
        shift = { 0.1, 0},
        animation_speed = 0.5
    }
    tur_super_turbine_entity.vertical_animation = {
        filename = sprite('tur_super_turbine_entity_animation_vertikal.png'),
        width = 256,
        height = 512,
        line_length = 3,
        scale = 0.36,
        lines_per_file = 3,
        frame_count = 9,
        shift = { 0, -0.2},
        animation_speed = 0.5
    }
    tur_super_turbine_entity.smoke = nil

local tur_extreme_turbine_entity = util.table.deepcopy(data.raw.generator["steam-turbine"])
    tur_extreme_turbine_entity.name = "tur_extreme_turbine_entity"
    tur_extreme_turbine_entity.fluid_usage_per_tick = 1
    tur_extreme_turbine_entity.burns_fluid = false
    tur_extreme_turbine_entity.scale_fluid_usage = false
    tur_extreme_turbine_entity.maximum_temperature = 900
    tur_extreme_turbine_entity.minable.result = "tur_extreme_turbine_item"
    tur_extreme_turbine_entity.energy_source.usage_priority = "secondary-output"
    tur_extreme_turbine_entity.fluid_box.filter = "tur_extreme_torque"
    tur_extreme_turbine_entity.max_power_output = "30MW"
    tur_extreme_turbine_entity.next_upgrade = nil
    tur_extreme_turbine_entity.horizontal_animation = {
        filename = sprite('tur_extreme_turbine_entity_animation_horizontal.png'),
        width = 512,
        height = 256,
        line_length = 3,
        scale = 0.34,
        lines_per_file = 3,
        frame_count = 9,
        shift = { 0.1, 0},
        animation_speed = 0.5
    }
    tur_extreme_turbine_entity.vertical_animation = {
        filename = sprite('tur_extreme_turbine_entity_animation_vertikal.png'),
        width = 256,
        height = 512,
        line_length = 3,
        scale = 0.36,
        lines_per_file = 3,
        frame_count = 9,
        shift = { 0, -0.2},
        animation_speed = 0.5
    }
    tur_extreme_turbine_entity.smoke = nil

local tur_4way_turbine_entity = util.table.deepcopy(data.raw.generator["steam-turbine"])
tur_4way_turbine_entity.name = "tur_4way_turbine_entity"
tur_4way_turbine_entity.fluid_usage_per_tick = 4
tur_4way_turbine_entity.burns_fluid = false
tur_4way_turbine_entity.scale_fluid_usage = false
tur_4way_turbine_entity.maximum_temperature = 500
tur_4way_turbine_entity.minable.result = "tur_4way_turbine_item"
tur_4way_turbine_entity.energy_source.usage_priority = "primary-output"
tur_4way_turbine_entity.fluid_box.filter = "steam"
tur_4way_turbine_entity.max_power_output = "40MW"
tur_4way_turbine_entity.next_upgrade = nil
tur_4way_turbine_entity.collision_box = {{-2.5, -2.5}, {2.5, 2.5}}
tur_4way_turbine_entity.selection_box = {{-2.5, -2.5}, {2.5, 2.5}}
tur_4way_turbine_entity.horizontal_animation = {
    filename = sprite('tur_4way_turbine_entity_animation.png'),
    width = 512,
    height = 512,
    line_length = 3,
    scale = 0.43,
    lines_per_file = 3,
    frame_count = 9,
    shift = { 0, -0.5},
    animation_speed = 0.5
}
tur_4way_turbine_entity.vertical_animation = {
    filename = sprite('tur_4way_turbine_entity_animation.png'),
    width = 512,
    height = 512,
    line_length = 3,
    scale = 0.43,
    lines_per_file = 3,
    frame_count = 9,
    shift = { 0, -0.5},
    animation_speed = 0.5
}
tur_4way_turbine_entity.fluid_box = {
  base_area = 1,
  height = 2,
  base_level = -1,
  pipe_covers = pipecoverspictures(),
  pipe_connections =
  {
    {type = "input-output", position = {3, 0}},
    {type = "input-output", position = {-3, 0}},
    {type = "input-output", position = {0, 3}},
    {type = "input-output", position = {0, -3}}
  },
  production_type = "input-output",
  filter = "steam"
}

local tur_8way_turbine_entity = util.table.deepcopy(data.raw.generator["steam-turbine"])
tur_8way_turbine_entity.name = "tur_8way_turbine_entity"
tur_8way_turbine_entity.fluid_usage_per_tick = 11
tur_8way_turbine_entity.burns_fluid = false
tur_8way_turbine_entity.scale_fluid_usage = false
tur_8way_turbine_entity.maximum_temperature = 900
tur_8way_turbine_entity.minable.result = "tur_8way_turbine_item"
tur_8way_turbine_entity.energy_source.usage_priority = "primary-output"
tur_8way_turbine_entity.fluid_box.filter = "steam"
tur_8way_turbine_entity.max_power_output = "80MW"
tur_8way_turbine_entity.next_upgrade = nil
tur_8way_turbine_entity.collision_box = {{-2.5, -2.5}, {2.5, 2.5}}
tur_8way_turbine_entity.selection_box = {{-2.5, -2.5}, {2.5, 2.5}}
tur_8way_turbine_entity.horizontal_animation = {
    filename = sprite('tur_8way_turbine_entity_animation.png'),
    width = 512,
    height = 512,
    line_length = 3,
    scale = 0.43,
    lines_per_file = 3,
    frame_count = 9,
    shift = { 0, -0.5},
    animation_speed = 0.5
}
tur_8way_turbine_entity.vertical_animation = {
    filename = sprite('tur_8way_turbine_entity_animation.png'),
    width = 512,
    height = 512,
    line_length = 3,
    scale = 0.43,
    lines_per_file = 3,
    frame_count = 9,
    shift = { 0, -0.5},
    animation_speed = 0.5
}
tur_8way_turbine_entity.fluid_box = {
    base_area = 1,
    height = 2,
    base_level = -1,
    pipe_covers = pipecoverspictures(),
    pipe_connections =
    {
      {type = "input-output", position = {3, 0}},
      {type = "input-output", position = {-3, 0}},
      {type = "input-output", position = {0, 3}},
      {type = "input-output", position = {0, -3}}
    },
    production_type = "input-output",
    filter = "steam"
  }


--exchanger
local tur_exchanger_entity = util.table.deepcopy(data.raw.boiler["heat-exchanger"])
    tur_exchanger_entity.name = "tur_exchanger_entity"
    tur_exchanger_entity.target_temperature = 900
    tur_exchanger_entity.minable.result = "tur_exchanger_item"
    tur_exchanger_entity.energy_consumption = "60MW"
    tur_exchanger_entity.energy_source.min_working_temperature = 900

local tur_exchanger_entity_2 = util.table.deepcopy(data.raw.boiler["heat-exchanger"])
    tur_exchanger_entity_2.name = "tur_exchanger_entity_2"
    tur_exchanger_entity_2.target_temperature = 750
    tur_exchanger_entity_2.minable.result = "tur_exchanger_item_2"
    tur_exchanger_entity_2.energy_consumption = "40MW"
    tur_exchanger_entity_2.energy_source.min_working_temperature = 750


data:extend({
    tur_super_turbine_entity,
    tur_extreme_turbine_entity,
    tur_exchanger_entity,
    tur_exchanger_entity_2,
    tur_4way_turbine_entity,
    tur_8way_turbine_entity,
    --subgroups
    {
        name = 'tur_converter_category',
        type = 'recipe-category',
    },
    --converter
    {
        name = 'tur_converter_item',
        type = 'item',
        icon = sprite('tur_converter_entity_icon.png'),
        icon_size = 64,
        place_result = 'tur_converter_entity',
        stack_size = 20,
        subgroup = 'energy',
        order = 'x-a-c',
    },
    {
        name = 'tur_converter_entity',
        type = 'assembling-machine',
        icon = sprite('tur_converter_entity_icon.png'),
        icon_size = 64,
        flags = {"player-creation","placeable-neutral"},
        max_health = 300,
        corpse = 'big-remnants',
        collision_box = {{-2.4,-2.4},{2.4,2.4}},
        selection_box = {{-2.5,-2.5},{2.5,2.5}},
        map_color = {r=0, g=0, b=1, a=1},
        minable = {
            mining_time = 1,
            result = 'tur_converter_item',
        },
        crafting_categories = {'tur_converter_category'},
        crafting_speed = 1,
        energy_source = {
            type = 'void',
        },
        energy_usage = '1W',
        --fluid boxes
        fluid_boxes = {
            {
              filter = 'steam',
              base_area = 1,
              height = 2,
              base_level = 1,
              pipe_covers = pipecoverspictures(),
              pipe_connections =
              {
                {type = "output", position = {0, -3}},
              },
              production_type = "output"
            },
            { 
              filter = 'steam',
              base_area = 1,
              height = 2,
              base_level = 1,
              pipe_covers = pipecoverspictures(),
              pipe_connections =
              {
                {type = "output", position = {0, 3}}
              },
              production_type = "output"
            },
            { 
              filter = 'steam',
              base_area = 1,
              height = 2,
              base_level = -1,
              pipe_covers = pipecoverspictures(),
              pipe_connections =
              {
                {type = "input", position = {3, 0}},
              },
              production_type = "input"
            },
            {
              base_area = 1,
              height = 2,
              base_level = 1,
              pipe_covers = pipecoverspictures(),
              pipe_connections =
              {
                {type = "output", position = {-3, 0}},
              },
              production_type = "output"
            },
        },
        --animation
        animation = {
            north = {
                filename = sprite('tur_converter_entity_animation.png'),
                size = {224,224},
                scale = 1,
                line_length = 6,
                lines_per_file = 6,
                frame_count = 4,
                animation_speed = 0.5,
            },
            east = {
                filename = sprite('tur_converter_entity_animation.png'),
                size = {224,224},
                scale = 1,
                line_length = 6,
                lines_per_file = 6,
                frame_count = 4,
                animation_speed = 0.5,
            },
            south = {
                filename = sprite('tur_converter_entity_animation.png'),
                size = {224,224},
                scale = 1,
                line_length = 6,
                lines_per_file = 6,
                frame_count = 4,
                animation_speed = 0.5,
            },
            west = {
                filename = sprite('tur_converter_entity_animation.png'),
                size = {224,224},
                scale = 1,
                line_length = 6,
                lines_per_file = 6,
                frame_count = 4,
                animation_speed = 0.5,
            }
        },
    },
    --turbines
    {
        name = 'tur_super_turbine_item',
        type = 'item',
        icon = sprite('tur_super_turbine_entity_icon.png'),
        icon_size = 64,
        place_result = 'tur_super_turbine_entity',
        stack_size = 20,
        subgroup = 'energy',
        order = 'x-b',
    },
    {
        name = 'tur_extreme_turbine_item',
        type = 'item',
        icon = sprite('tur_extreme_turbine_entity_icon.png'),
        icon_size = 64,
        place_result = 'tur_extreme_turbine_entity',
        stack_size = 20,
        subgroup = 'energy',
        order = 'x-c',
    },
    {
        name = 'tur_4way_turbine_item',
        type = 'item',
        icon = sprite('tur_4way_turbine_entity_icon.png'),
        icon_size = 64,
        place_result = 'tur_4way_turbine_entity',
        stack_size = 20,
        subgroup = 'energy',
        order = 'x-d',
    },
    {
        name = 'tur_8way_turbine_item',
        type = 'item',
        icon = sprite('tur_8way_turbine_entity_icon.png'),
        icon_size = 64,
        place_result = 'tur_8way_turbine_entity',
        stack_size = 20,
        subgroup = 'energy',
        order = 'x-e',
    },
    --exchanger
    {
        name = 'tur_exchanger_item',
        type = 'item',
        icon = sprite('tur_exchanger_entity_icon.png'),
        icon_size = 64,
        place_result = 'tur_exchanger_entity',
        stack_size = 20,
        subgroup = 'energy',
        order = 'x-a-b',
    },
    {
        name = 'tur_exchanger_item_2',
        type = 'item',
        icon = sprite('tur_exchanger_entity_icon_2.png'),
        icon_size = 64,
        place_result = 'tur_exchanger_entity_2',
        stack_size = 20,
        subgroup = 'energy',
        order = 'x-a-a',
    },
    --torgue
    {
        name = 'tur_extreme_torque',
        type = 'fluid',
        icon = sprite('tur_extreme_torque.png'),
        icon_size = 64,
        default_temperature = 15,
        max_temperature = 1000,
        heat_capacity = '1kJ',
        base_color = { r=0, g=0, b=0.1 }, 
		flow_color = { r=0, g=0, b=0.1 }, 
		pressure_to_speed_ratio = 0.400, 
        flow_to_energy_ratio = 0,
        subgroup = 'energy',
        order = 'z-b',
    },
    {
        name = 'tur_super_torque',
        type = 'fluid',
        icon = sprite('tur_super_torque.png'),
        icon_size = 64,
        default_temperature = 15,
        max_temperature = 1000,
        heat_capacity = '1kJ',
        base_color = { r=0, g=0, b=0.1 }, 
		flow_color = { r=0, g=0, b=0.1 }, 
		pressure_to_speed_ratio = 0.400, 
        flow_to_energy_ratio = 0,
        subgroup = 'energy',
        order = 'z-a',
    },
    --recipes
    {
        name = 'tur_converter_recipe',
        type = 'recipe',
        enabled = false,
        ingredients = {
            {type="item", name="iron-plate", amount=200},
            {type="item", name="iron-gear-wheel", amount=100},
            {type="item", name="heat-exchanger", amount=2},
        },
        results = {
            {type="item", name="tur_converter_item", amount=1},
        },
        result_count = 1,
        energy_required = 10,
    },
    {
        name = 'tur_converter_1_recipe',
        type = 'recipe',
        enabled = false,
        main_product = "tur_extreme_torque",
        category = "tur_converter_category",
        ingredients = {
            {type="fluid", name="steam", amount=800, temperature=900},
        },
        results = {
            {type="fluid", name="steam", amount=410, temperature=750},
            {type="fluid", name="tur_extreme_torque", amount=190, temperature=900},
        },
        result_count = 1,
        energy_required = 1,
        always_show_made_in = true,
    },
    {
        name = 'tur_converter_2_recipe',
        type = 'recipe',
        enabled = false,
        main_product = "tur_super_torque",
        category = "tur_converter_category",
        ingredients = {
            {type="fluid", name="steam", amount=400, temperature=750},
        },
        results = {
            {type="fluid", name="steam", amount=290, temperature=500},
            {type="fluid", name="tur_super_torque", amount=250, temperature=750},
        },
        result_count = 1,
        energy_required = 1,
        always_show_made_in = true,
    },
    {
        name = 'tur_super_turbine_recipe',
        type = 'recipe',
        enabled = false,
        ingredients = {
            {type="item", name="iron-plate", amount=200},
            {type="item", name="iron-gear-wheel", amount=100},
            {type="item", name="steam-turbine", amount=4},
        },
        results = {
            {type="item", name="tur_super_turbine_item", amount=1},
        },
        result_count = 1,
        energy_required = 10,
    },
    {
        name = 'tur_extreme_turbine_recipe',
        type = 'recipe',
        enabled = false,
        ingredients = {
            {type="item", name="iron-plate", amount=200},
            {type="item", name="iron-gear-wheel", amount=100},
            {type="item", name="tur_super_turbine_item", amount=4},
        },
        results = {
            {type="item", name="tur_extreme_turbine_item", amount=1},
        },
        result_count = 1,
        energy_required = 10,
    },
    {
        name = 'tur_4way_turbine_recipe',
        type = 'recipe',
        enabled = false,
        ingredients = {
            {type="item", name="iron-plate", amount=200},
            {type="item", name="iron-gear-wheel", amount=100},
            {type="item", name="steam-turbine", amount=4},
        },
        results = {
            {type="item", name="tur_4way_turbine_item", amount=1},
        },
        result_count = 1,
        energy_required = 10,
    },
    {
        name = 'tur_8way_turbine_recipe',
        type = 'recipe',
        enabled = false,
        ingredients = {
            {type="item", name="iron-plate", amount=200},
            {type="item", name="iron-gear-wheel", amount=100},
            {type="item", name="tur_extreme_turbine_item", amount=4},
        },
        results = {
            {type="item", name="tur_8way_turbine_item", amount=1},
        },
        result_count = 1,
        energy_required = 10,
    },
    {
        name = 'tur_exchanger_recipe',
        type = 'recipe',
        enabled = false,
        ingredients = {
            {type="item", name="copper-plate", amount=220},
            {type="item", name="pipe", amount=100},
            {type="item", name="heat-exchanger", amount=6},
        },
        results = {
            {type="item", name="tur_exchanger_item", amount=1},
        },
        result_count = 1,
        energy_required = 10,
    },
    {
        name = 'tur_exchanger_recipe_2',
        type = 'recipe',
        enabled = false,
        ingredients = {
            {type="item", name="copper-plate", amount=100},
            {type="item", name="pipe", amount=40},
            {type="item", name="heat-exchanger", amount=4},
        },
        results = {
            {type="item", name="tur_exchanger_item_2", amount=1},
        },
        result_count = 1,
        energy_required = 10,
    },
    --techs
    {
        name = 'tur_super_torque_tech',
        type = 'technology',
        icon = sprite('tur_super_torque_tech.png'),
        icon_size = 128,
        prerequisites = {
            'nuclear-power'
        },
        effects = {
            { 
                type = 'unlock-recipe',
                recipe = 'tur_converter_recipe',
            },
            { 
                type = 'unlock-recipe',
                recipe = 'tur_converter_2_recipe',
            },
            { 
                type = 'unlock-recipe',
                recipe = 'tur_exchanger_recipe_2',
            },
            { 
                type = 'unlock-recipe',
                recipe = 'tur_super_turbine_recipe',
            }
        },
        unit = {
            count = '1000',
            ingredients = {
                {'chemical-science-pack',1},
                {'automation-science-pack',1},
                {'logistic-science-pack',1}
            },
            time = 100,
        },
    },
    {
        name = 'tur_extreme_torque_tech',
        type = 'technology',
        icon = sprite('tur_extreme_torque_tech.png'),
        icon_size = 128,
        prerequisites = {
            'tur_super_torque_tech'
        },
        effects = {
            { 
                type = 'unlock-recipe',
                recipe = 'tur_converter_1_recipe',
            },
            { 
                type = 'unlock-recipe',
                recipe = 'tur_extreme_turbine_recipe',
            },
            { 
                type = 'unlock-recipe',
                recipe = 'tur_exchanger_recipe',
            }
        },
        unit = {
            count = '2000',
            ingredients = {
                {'chemical-science-pack',1},
                {'automation-science-pack',1},
                {'logistic-science-pack',1}
            },
            time = 100,
        },
    },
    {
        name = 'tur_4way_turbine_tech',
        type = 'technology',
        icon = sprite('tur_4way_turbine_tech.png'),
        icon_size = 128,
        prerequisites = {
            'tur_extreme_torque_tech'
        },
        effects = {
            { 
                type = 'unlock-recipe',
                recipe = 'tur_4way_turbine_recipe',
            },
            { 
                type = 'unlock-recipe',
                recipe = 'tur_8way_turbine_recipe',
            }
        },
        unit = {
            count = '2000',
            ingredients = {
                {'chemical-science-pack',1},
                {'automation-science-pack',1},
                {'logistic-science-pack',1}
            },
            time = 100,
        },
    },


})