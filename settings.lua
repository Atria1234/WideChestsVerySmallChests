local function limit_inventory_size(chest_name)
    data.raw['double-setting'][MergingChests.chest_specific_setting_name(MergingChests.setting_names.inventory_size_multiplier, chest_name)].hidden = true
    data.raw['int-setting'][MergingChests.chest_specific_setting_name(MergingChests.setting_names.inventory_size_limit, chest_name)].hidden = true
    data.raw['int-setting'][MergingChests.chest_specific_setting_name(MergingChests.setting_names.inventory_size_limit, chest_name)].default_value = 1
end

MergingChests.create_mergeable_chest_setting('wooden-chest-small', { default_value = 'none', order = '01', inventory_settings = true })
MergingChests.create_mergeable_chest_setting('iron-chest-small', { default_value = 'none', order = '02', inventory_settings = true })
MergingChests.create_mergeable_chest_setting('steel-chest-small', { default_value = 'none', order = '03', inventory_settings = true })

limit_inventory_size('wooden-chest-small')
limit_inventory_size('iron-chest-small')
limit_inventory_size('steel-chest-small')

if MergingChests.is_mod_active('WideChestsLogistic') then
    MergingChests.create_mergeable_chest_setting('logistic-chest-passive-provider-small', { default_value = 'none', order = '04', inventory_settings = true })
    MergingChests.create_mergeable_chest_setting('logistic-chest-active-provider-small', { default_value = 'none', order = '05', inventory_settings = true })
    MergingChests.create_mergeable_chest_setting('logistic-chest-storage-small', { default_value = 'none', order = '06', inventory_settings = true })
    MergingChests.create_mergeable_chest_setting('logistic-chest-buffer-small', { default_value = 'none', order = '07', inventory_settings = true })
    MergingChests.create_mergeable_chest_setting('logistic-chest-requester-small', { default_value = 'none', order = '08', inventory_settings = true })

    limit_inventory_size('logistic-chest-passive-provider-small')
    limit_inventory_size('logistic-chest-active-provider-small')
    limit_inventory_size('logistic-chest-storage-small')
    limit_inventory_size('logistic-chest-buffer-small')
    limit_inventory_size('logistic-chest-requester-small')
end
