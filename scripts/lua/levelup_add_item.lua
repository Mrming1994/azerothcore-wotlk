function levelUpAddItem(event, player)
    local level = player:GetLevel()
    if (level == 2) then
        player:AddItem(41599, 4)
    end
    if (level == 60) then
      if (player:IsHorde()) then
          player:AddItem(88888, 1)
      else
          player:AddItem(88889, 1)
      end
  end
end
RegisterPlayerEvent(13, levelUpAddItem)
