--------------------------------------------------------------------------------
-- // UNIT
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- // HIDE
--------------------------------------------------------------------------------

PetName:Hide()

-- hide damage/healing numbers
PlayerHitIndicator:SetText(nil)
PlayerHitIndicator.SetText = function() end
PetHitIndicator:SetText(nil)
PetHitIndicator.SetText = function() end

-- hide pvp flag
PlayerPVPIcon:SetAlpha(0)
TargetFrameTextureFramePVPIcon:SetAlpha(0)
FocusFrameTextureFramePVPIcon:SetAlpha(0)
for i = 1, MAX_PARTY_MEMBERS do
  _G["PartyMemberFrame"..i.."PVPIcon"]:Hide()
end

-- hooksecurefunc("PlayerFrame_UpdateStatus", function(self)
--   PlayerStatusTexture:Hide()
--   PlayerRestGlow:Hide()
--   PlayerStatusGlow:Hide()
--   PlayerPrestigeBadge:SetAlpha(0)
--   PlayerPrestigePortrait:SetAlpha(0)
--   TargetFrameTextureFramePrestigeBadge:SetAlpha(0)
--   TargetFrameTextureFramePrestigePortrait:SetAlpha(0)
--   FocusFrameTextureFramePrestigeBadge:SetAlpha(0)
--   FocusFrameTextureFramePrestigePortrait:SetAlpha(0)
-- end)

--------------------------------------------------------------------------------
-- // TARGET
--------------------------------------------------------------------------------

-- remove faction colour behind target name
hooksecurefunc("TargetFrame_CheckFaction", function(self)
  self.nameBackground:SetVertexColor(0, 0, 0, .5)
end)

--------------------------------------------------------------------------------
-- // POWER
--------------------------------------------------------------------------------

hooksecurefunc("UnitFrameManaBar_UpdateType", function(self)
  local powerType = UnitPowerType(self.unit)

  -- change mana colour to lighter blue
  if powerType == 0 then
    self:SetStatusBarColor(0, .5, 1)
  end
end)
