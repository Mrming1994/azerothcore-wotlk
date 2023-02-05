function getHordeAureole(event, player) player:AddAura(32243, player) end

function getAureole(event, player) player:AddAura(32235, player) end

RegisterItemGossipEvent(88888, 1, getHordeAureole)
RegisterItemGossipEvent(88889, 1, getAureole)
