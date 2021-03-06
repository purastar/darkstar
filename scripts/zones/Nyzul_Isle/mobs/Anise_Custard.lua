-----------------------------------
--  MOB: Anise Custard
-- Area: Nyzul Isle
-- Info: Enemy Leader, Absorbs ice elemental damage
-----------------------------------
require("scripts/globals/status")
-----------------------------------

function onMobSpawn(mob)
    mob:addMod(dsp.mod.ICE_ABSORB, 100)
end

function onMobEngaged(mob,target)
end

function onMobFight(mob,target)
end

function onMobDeath(mob, player, isKiller)
    local instance = mob:getInstance()
    
    if isKiller then
        instance:setProgress(15)
    end
end

function onMobDespawn(mob)
end