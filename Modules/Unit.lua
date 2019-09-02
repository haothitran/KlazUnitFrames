--------------------------------------------------------------------------------
-- // MODULES / UNIT
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- // HIDE
--------------------------------------------------------------------------------

-- hide pet name
PetName:Hide()

-- hide damage/healing numbers
PlayerHitIndicator:SetText(nil)
PlayerHitIndicator.SetText = function() end
PetHitIndicator:SetText(nil)
PetHitIndicator.SetText = function() end

-- hide pvp flag
PlayerPVPIcon:SetAlpha(0)
TargetFrameTextureFramePVPIcon:SetAlpha(0)
for i = 1, MAX_PARTY_MEMBERS do
  _G['PartyMemberFrame'..i..'PVPIcon']:Hide()
end

hooksecurefunc('PlayerFrame_UpdateStatus', function(self)
  PlayerStatusTexture:Hide()
  PlayerRestGlow:Hide()
  PlayerStatusGlow:Hide()
  PlayerPrestigeBadge:SetAlpha(0)
  PlayerPrestigePortrait:SetAlpha(0)
  TargetFrameTextureFramePrestigeBadge:SetAlpha(0)
  TargetFrameTextureFramePrestigePortrait:SetAlpha(0)
end)

--------------------------------------------------------------------------------
-- // TARGET
--------------------------------------------------------------------------------

-- remove faction colour behind target name
hooksecurefunc('TargetFrame_CheckFaction', function(self)
  self.nameBackground:SetVertexColor(0, 0, 0, .5)
end)

--------------------------------------------------------------------------------
-- // POWER
--------------------------------------------------------------------------------

hooksecurefunc('UnitFrameManaBar_UpdateType', function(self)
  local power = UnitPowerType(self.unit)

  -- change mana colour to lighter blue
  if power == 0 then
    self:SetStatusBarColor(0, .5, 1)
  end
end)

--------------------------------------------------------------------------------
-- // BOSS FRAMES
--------------------------------------------------------------------------------

-- boss frames position
Boss1TargetFrame:ClearAllPoints()
Boss1TargetFrame:SetPoint("TOPRIGHT", UIParent, "TOPRIGHT", -250, -300)
Boss1TargetFrame.SetPoint = function() end

-- boss frames scale
for i = 1, 5 do
    local f = _G["Boss"..i.."TargetFrame"]
    f:SetParent(UIParent)
    f:SetScale(1.1)
end

-- reduce gap between boss frames
for i = 2, 5 do
    _G["Boss"..i.."TargetFrame"]:SetPoint("TOPLEFT", _G["Boss"..(i-1).."TargetFrame"], "BOTTOMLEFT", 0, 0)
end
