--------------------------------------------------------------------------------
-- // MODULES / STYLE
--------------------------------------------------------------------------------

local f = CreateFrame('Frame')
f:RegisterEvent('PLAYER_ENTERING_WORLD')
f:SetScript('OnEvent', function(self, event)
  for i, v in pairs ({
    PlayerFrameTexture,
    PlayerFrameAlternateManaBarBorder,
    PlayerFrameAlternateManaBarLeftBorder,
    PlayerFrameAlternateManaBarRightBorder,

    ComboPointPlayerFrame.Background,
    ComboPointPlayerFrame.Combo1.PointOff,
    ComboPointPlayerFrame.Combo2.PointOff,
    ComboPointPlayerFrame.Combo3.PointOff,
    ComboPointPlayerFrame.Combo4.PointOff,
    ComboPointPlayerFrame.Combo5.PointOff,
    ComboPointPlayerFrame.Combo6.PointOff,

    PaladinPowerBarFrameBG,
    PaladinPowerBarFrameBankBG,

    AlternatePowerBarBorder,
    AlternatePowerBarLeftBorder,
    AlternatePowerBarRightBorder,

    PetFrameTexture,

    TargetFrameTextureFrameTexture,
    TargetFrameToTTextureFrameTexture,

    FocusFrameTextureFrameTexture,
    FocusFrameToTTextureFrameTexture,

    CastingBarFrame.Border,
    TargetFrameSpellBar.Border,
    FocusFrameSpellBar.Border,

    PartyMemberFrame1Texture,
    PartyMemberFrame2Texture,
    PartyMemberFrame3Texture,
    PartyMemberFrame4Texture,
    PartyMemberFrame1PetFrameTexture,
    PartyMemberFrame2PetFrameTexture,
    PartyMemberFrame3PetFrameTexture,
    PartyMemberFrame4PetFrameTexture,

    Boss1TargetFrameTextureFrameTexture,
    Boss2TargetFrameTextureFrameTexture,
    Boss3TargetFrameTextureFrameTexture,
    Boss4TargetFrameTextureFrameTexture,
    Boss5TargetFrameTextureFrameTexture,
    Boss1TargetFrameSpellBar.Border,
    Boss2TargetFrameSpellBar.Border,
    Boss3TargetFrameSpellBar.Border,
    Boss4TargetFrameSpellBar.Border,
    Boss5TargetFrameSpellBar.Border,
  }) do
    v:SetVertexColor(.2, .2, .2)
  end
end)

local a = CreateFrame('Frame')
local _, instanceType = IsInInstance()
a:RegisterEvent('PLAYER_ENTERING_WORLD')
a:RegisterEvent('ARENA_PREP_OPPONENT_SPECIALIZATIONS')
a:SetScript('OnEvent', function(self, event, addon)
  if addon == 'Blizzard_ArenaUI' then
    for i, v in pairs({
      ArenaEnemyFrame1Texture,
      ArenaEnemyFrame2Texture,
      ArenaEnemyFrame3Texture,
      ArenaEnemyFrame4Texture,
      ArenaEnemyFrame5Texture,
      ArenaEnemyFrame1SpecBorder,
      ArenaEnemyFrame2SpecBorder,
      ArenaEnemyFrame3SpecBorder,
      ArenaEnemyFrame4SpecBorder,
      ArenaEnemyFrame5SpecBorder,
      ArenaEnemyFrame1PetFrameTexture,
      ArenaEnemyFrame2PetFrameTexture,
      ArenaEnemyFrame3PetFrameTexture,
      ArenaEnemyFrame4PetFrameTexture,
      ArenaEnemyFrame5PetFrameTexture,
    }) do
      v:SetVertexColor(.2, .2, .2)
    end
  elseif event == 'ARENA_PREP_OPPONENT_SPECIALIZATIONS' or (event == 'PLAYER_ENTERING_WORLD' and instanceType == 'arena') then
    for i, v in pairs({
      ArenaPrepFrame1Texture,
      ArenaPrepFrame2Texture,
      ArenaPrepFrame3Texture,
      ArenaPrepFrame4Texture,
      ArenaPrepFrame5Texture,
      ArenaPrepFrame1SpecBorder,
      ArenaPrepFrame2SpecBorder,
      ArenaPrepFrame3SpecBorder,
      ArenaPrepFrame4SpecBorder,
      ArenaPrepFrame5SpecBorder,
    }) do
      v:SetVertexColor(.2, .2, .2)
    end
  end
end)
