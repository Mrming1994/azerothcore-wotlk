function levelUpAddItem(event, player)
    local level = player:GetLevel()
    if (level == 60) then
      if (player:IsHorde()) then
          player:AddItem(25474, 1)
      else
          player:AddItem(25470, 1)
      end
  end
end
RegisterPlayerEvent(13, levelUpAddItem)
