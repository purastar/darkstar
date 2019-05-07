-----------------------------------
--  MOB: Mokku
-- Area: Nyzul Isle
-- Info: Enemy Leader, Only uses Frenetic Rip
-----------------------------------

function onMobSpawn(mob)
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