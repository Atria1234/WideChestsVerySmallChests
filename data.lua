MergingChests.create_mergeable_chest(
    {
        chest_name = 'wooden-chest-small'
    },
    MergingChests.steel_chest_segments
)
MergingChests.create_mergeable_chest(
    {
        chest_name = 'iron-chest-small'
    },
    MergingChests.steel_chest_segments
)
MergingChests.create_mergeable_chest(
    {
        chest_name = 'steel-chest-small'
    },
    MergingChests.steel_chest_segments
)

MergingChests.set_next_upgrade_of('container', 'wooden-chest-small', 'iron-chest-small')
MergingChests.set_next_upgrade_of('container', 'iron-chest-small', 'steel-chest-small')

if MergingChests.is_mod_active('WideChestsLogistic') then
    MergingChests.create_mergeable_chest(
        {
            chest_name = 'logistic-chest-passive-provider-small',
            logistic_mode = 'passive-provider'
        },
        MergingChestsLogistic.passive_provider_chest_segments
    )
    MergingChests.create_mergeable_chest(
        {
            chest_name = 'logistic-chest-active-provider-small',
            logistic_mode = 'active-provider'
        },
        MergingChestsLogistic.active_provider_chest_segments
    )
    MergingChests.create_mergeable_chest(
        {
            chest_name = 'logistic-chest-storage-small',
            logistic_mode = 'storage'
        },
        MergingChestsLogistic.storage_chest_segments
    )
    MergingChests.create_mergeable_chest(
        {
            chest_name = 'logistic-chest-buffer-small',
            logistic_mode = 'buffer'
        },
        MergingChestsLogistic.buffer_chest_segments
    )
    MergingChests.create_mergeable_chest(
        {
            chest_name = 'logistic-chest-requester-small',
            logistic_mode = 'requester'
        },
        MergingChestsLogistic.requester_chest_segments
    )
end
