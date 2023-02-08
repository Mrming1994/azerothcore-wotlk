--
-- Created by IntelliJ IDEA.
-- User: Silvia
-- Date: 29/01/2021
-- Time: 21:34
-- To change this template use File | Settings | File Templates.
-- Originally created by Honey for Azerothcore
-- requires ElunaLua module

maps = {--副本表
{249,0},{249,1},{269,1},{309,0},
{409,0},{469,0},
{509,0},{531,0},{532,0},{533,0},{533,1},
{534,0},{540,1},{542,1},{543,1},{544,0},{545,1},{546,1},{547,1},{548,0},
{550,0},{552,1},{553,1},{554,1},{555,1},{556,1},{557,1},{558,1},
{560,1},{564,0},{565,0},{568,0},
{574,1},{575,1},{576,1},{578,1},
{580,0},{585,1},{595,1},{598,1},{599,1},
{600,1},{601,1},{602,1},{603,0},{603,1},{604,1},{608,1},
{615,0},{615,1},{616,0},{616,1},{619,1},{624,0},{624,1},
{631,0},{631,1},{631,2},{631,3},{632,1},
{649,0},{649,1},{649,2},{649,3},--十字军的试炼
{650,1},{658,1},{668,1},
{724,0},{724,1},{724,2},{724,3},
}


-- Summoning your party is allowed on the maps listed below. You can add more by providing
-- the related map id in its own line. Find map ids e.g. in ./data/map.dbc

-- Eastern kingdoms
table.insert(maps, 0)
-- Kalimdor
table.insert(maps, 1)
-- Outland
table.insert(maps, 530)
-- Northrend
table.insert(maps, 571)

------------------------------------------
-- NO ADJUSTMENTS REQUIRED BELOW THIS LINE
------------------------------------------

local function has_value (tab, val)
        for index, value in ipairs(tab) do
                if value == val then
                        return true
                end
        end
        return false
end

local function summonAll(event, player, command)
  if command == 'summonall' then
        mapId = player:GetMapId()
        --allow to proceed if the player is on one of the maps listed above
        if has_value(maps, mapId) then
                --allow to proceed if the player is not in combat
                if not player:IsInCombat() then
                        group = player:GetGroup()
                        groupPlayers = group:GetMembers()
                        for _, v in pairs(groupPlayers) do
                                if v ~= player then
                                        v:SummonPlayer(player)
                                end        
                        end
                else
                        player:SendBroadcastMessage("战斗中无法召唤。")
                end
                return false
        else
                player:SendBroadcastMessage("这里不能召唤。")
        end
        return false        
  end
end

RegisterPlayerEvent(42, summonAll)
