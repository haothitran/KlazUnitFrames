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
