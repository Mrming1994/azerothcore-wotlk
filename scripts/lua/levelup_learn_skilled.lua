



function levelUp(event,player)
  -- Player:AdvanceSkillsToMax()
  -- 全部将[玩家]全部武器技能(Skill)提升到最大
end
RegisterPlayerEvent(13, levelUp)
--注册玩家升级事件,在玩家升级的时候触发，13代表是登陆，PLAYER_EVENT_ON_LEVEL_CHANGE 代表需要出发的具体代码