



function levelUpAddItem(event,player)
  local level = player:GetLevel()
  if(level == 2) then 
    player:AddItem( 41599, 4 )
      -- if(level == 68) 
        -- player:AddItem( 41599, 7 )
  end
end
RegisterPlayerEvent(13, levelUpAddItem)
--注册玩家升级事件,在玩家升级的时候触发，13代表是登陆，PLAYER_EVENT_ON_LEVEL_CHANGE 代表需要出发的具体代码