-----------------------------------
--  Area: Abyssea - Konschtat (15)
--   Mob: Balaur
-- TODO: When its HP is under 50%, Balaur has a chance to gain
-- a spikes effect after using Breath attacks (matches element of breath)
-----------------------------------
require("scripts/globals/status");

-----------------------------------
-- onMobInitialize
-----------------------------------

function onMobInitialize(mob)
end;

-----------------------------------
-- onMobSpawn
-----------------------------------

function onMobSpawn(mob)
end;

-----------------------------------
-- onMobEngaged
-----------------------------------

function onMobEngaged(mob, target)
end;

-----------------------------------
-- onMobFight
-----------------------------------

function onMobFight(mob, target)
    -- Uses different upgraded breath attack starting at 50% hp.
    if (mob:getHPP() <= 50) then
        mob:setMobMod(MOBMOD_SKILL_LIST, 790);
    else
        -- I'm assuming that if it heals up, it goes back to the other skill list.
        mob:setMobMod(MOBMOD_SKILL_LIST, 791);
        -- This 'else' can be removed if that isn't the case, and a localVar added so it only execs once.
    end
end;

-----------------------------------
-- onMobDeath
-----------------------------------

function onMobDeath(mob, player, isKiller)
end;
