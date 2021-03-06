-----------------------------------------
-- ID: 5546
-- Item: Prized Crab Stewpot
-- Food Effect: 4 Hrs, All Races
-----------------------------------------
-- TODO: Group Effect
-- HP +10% Cap 100
-- MP +20
-- Vitality +2
-- Agility +2
-- Mind +4
-- HP Recovered while healing +9
-- MP Recovered while healing +3
-- Defense 20% Cap 100
-- Evasion +7
-----------------------------------------
require("scripts/globals/status")
require("scripts/globals/msg")
-----------------------------------------

function onItemCheck(target)
    local result = 0
    if target:hasStatusEffect(tpz.effect.FOOD) or target:hasStatusEffect(tpz.effect.FIELD_SUPPORT_FOOD) then
        result = tpz.msg.basic.IS_FULL
    end
    return result
end

function onItemUse(target)
    target:addStatusEffect(tpz.effect.FOOD, 0, 0, 14400, 5546)
end

function onEffectGain(target, effect)
    target:addMod(tpz.mod.FOOD_HPP, 10)
    target:addMod(tpz.mod.FOOD_HP_CAP, 100)
    target:addMod(tpz.mod.MP, 20)
    target:addMod(tpz.mod.VIT, 2)
    target:addMod(tpz.mod.AGI, 2)
    target:addMod(tpz.mod.MND, 4)
    target:addMod(tpz.mod.HPHEAL, 9)
    target:addMod(tpz.mod.MPHEAL, 3)
    target:addMod(tpz.mod.FOOD_DEFP, 20)
    target:addMod(tpz.mod.FOOD_DEF_CAP, 100)
    target:addMod(tpz.mod.EVA, 7)
end

function onEffectLose(target, effect)
    target:delMod(tpz.mod.FOOD_HPP, 10)
    target:delMod(tpz.mod.FOOD_HP_CAP, 100)
    target:delMod(tpz.mod.MP, 20)
    target:delMod(tpz.mod.VIT, 2)
    target:delMod(tpz.mod.AGI, 2)
    target:delMod(tpz.mod.MND, 4)
    target:delMod(tpz.mod.HPHEAL, 9)
    target:delMod(tpz.mod.MPHEAL, 3)
    target:delMod(tpz.mod.FOOD_DEFP, 20)
    target:delMod(tpz.mod.FOOD_DEF_CAP, 100)
    target:delMod(tpz.mod.EVA, 7)
end
