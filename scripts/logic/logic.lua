-- Core Functions
function has(item)
    return Tracker:ProviderCountForCode(item) > 0
end

function has_not(item)
    return Tracker:ProviderCountForCode(item) == 0
end

-- Accessibilty Rules
function hasAct1()
    return true
end

function hasHiddenPath()
    return has("lower_crossing_destroy_blockade")
end

function hasDevilsAquifer()
    return has("5_scrap")
end

function hasSunkenReliquary()
    return has("flooded_passage_destroy_blockade")
end

function hasDepravedSanctuary()
    return has("strange_key")
end

function hasEastMarsh()
    return has("east_marsh_bridge_repair")
end

function hasWardensCellar()
    return has("warden_boss_door_unlock")
end

function hasAct2()
    return has("arkovia_bridge_repair")
end

function hasAct3()
    return hasAct2() and has("arkovian_foothills_destroy_barricade")
end

function hasStepsOfTorment()
    return hasAct3() and has("forbidden_door_unlock")
end

function hasFourHillsSecret()
    return hasAct3() and has("new_harbor_destroy_barricade")
end

function hasTyrantsHold()
    return hasAct3() and (has("twin_falls_bridge_repair") or has("prospectors_trail_destroy_barricade"))
end

function hasPortValbury()
    return hasAct3() and has("conflagration_destroy_barricade") and has("forbidden_door_unlock")
end

function hasHomesteadSideDoors()
    return hasAct3() and has("homestead_side_doors_unlock")
end

function hasRoyalHive()
    return hasHomesteadSideDoors() and has("royal_hive_queen_door_unlock")
end

function hasAct4()
    return hasAct3() and has("homestead_main_doors_unlock")
end

function hasTempleOfTheThree()
    return hasEastMarsh() and has("witch_gods_temple_unlock")
end

function hasAct5()
    return hasAct4() and has("fort_ikon_gate_unlock")
end

function hasAct6()
    return hasAct5() and has("fort_ikon_destroy_blockade")
end

function hasBastionOfChaos()
    return hasAct6() and has("necropolis_bridge_repair") and has("forbidden_door_unlock")
end

function hasTombOfTheWatchers()
    return hasAct6() and has("tomb_of_the_watchers_door_unlock")
end

function hasEdgeOfMadness()
    return hasTombOfTheWatchers() and has("loghorrean_seal_unlock")
end

function hasAct7()
    return has("gloomwald_destroy_blockade") --and hasAct5()
end

function hasNanesHideout()
    return hasAct7() and has("nanes_hideout_destroy_barricade")
end

function hasAncientGrove()
    return hasAct7() and has("forbidden_door_unlock")
end

function hasDenOfTheAncient()
    return hasAct7() and has("ugdenbog_destroy_barricade")
end

function hasForlornCellar()
    return hasAct7() and has("forlorn_cellar_unlock")
end

function hasAct8()
    return hasAct7() and has("altar_of_rattosh_portal")
end

function hasAct9()
    return hasAct8() and has("steelcap_district_door_unlock")
end

function hasCandleDistrict()
    return hasAct9() or (hasAct8() and (has("candle_district_door_unlock") or has("malmouth_bridge_lowered")))
end

function hasHarborStash()
    return hasAct9() and has("malmouth_harbor_destroy_barricade")
end

function hasCrownHill()
    return hasAct9() and has("crown_hill_destroy_gates")
end

function hasFleshworks()
    return hasCrownHill() and has("crown_hill_open_flesh_barrier")
end

function hasSanctumOfFlesh()
    return hasFleshworks() and has("fleshworks_open_flesh_barrier")
end

-- Visibility Rules
function hasGoalOfAtLeastKrieg()
    return true
end

function hasGoalOfAtLeastRavna()
    return has("goal_swarm_queen_ravna") or has("goal_loghorrean") or has("goal_master_of_flesh")
end

function hasGoalOfAtLeastLoghorrean()
    return has("goal_loghorrean") or has("goal_master_of_flesh")
end

function hasGoalOfAtLeastMasterOfFlesh()
    return has("goal_master_of_flesh")
end

function hasDevotionShrines()
    return has("setting_devotion_shrine")
end

function hasForbiddenDungeons()
    return has("setting_forbidden_dungeons")
end

function hasSecretChests()
    return has("setting_secret_chest")
end

function hasOneShotChests()
    return has("setting_one_shot_chest")
end

function hasLoreNotes()
    return has("setting_lore_note")
end