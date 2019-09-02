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
-- // STATUS BAR
--------------------------------------------------------------------------------

hooksecurefunc("PlayerFrame_ToPlayerArt", function(self)
  self.healthbar:SetStatusBarTexture("Interface\\AddOns\\KlazUnitFrames\\Media\\UI-StatusBar")
  --self.healthbar.AnimatedLossBar:SetStatusBarTexture("Interface\\AddOns\\KlazUnitFrames\\Media\\UI-StatusBar")
  --PlayerFrameMyHealPredictionBar:SetTexture("Interface\\AddOns\\KlazUnitFrames\\Media\\UI-StatusBar")
  --PlayerFrameAlternateManaBar:SetStatusBarTexture("Interface\\AddOns\\KlazUnitFrames\\Media\\UI-StatusBar")
  --PlayerFrameManaBar.FeedbackFrame.BarTexture:SetTexture("Interface\\AddOns\\KlazUnitFrames\\Media\\UI-StatusBar")
  --PlayerFrameManaBar.FeedbackFrame.LossGlowTexture:SetTexture("Interface\\AddOns\\KlazUnitFrames\\Media\\UI-StatusBar")
  --PlayerFrameManaBar.FeedbackFrame.GainGlowTexture:SetTexture("Interface\\AddOns\\KlazUnitFrames\\Media\\UI-StatusBar")
  PetFrameHealthBar:SetStatusBarTexture("Interface\\AddOns\\KlazUnitFrames\\Media\\UI-StatusBar")
  PetFrameManaBar:SetStatusBarTexture("Interface\\AddOns\\KlazUnitFrames\\Media\\UI-StatusBar")
end)

hooksecurefunc("TargetFrame_CheckClassification", function(self)
  self.healthbar:SetStatusBarTexture("Interface\\AddOns\\KlazUnitFrames\\Media\\UI-StatusBar")
  --TargetFrameMyHealPredictionBar:SetTexture("Interface\\AddOns\\KlazUnitFrames\\Media\\UI-StatusBar")
  TargetFrameToTHealthBar:SetStatusBarTexture("Interface\\AddOns\\KlazUnitFrames\\Media\\UI-StatusBar")
  TargetFrameToTManaBar:SetStatusBarTexture("Interface\\AddOns\\KlazUnitFrames\\Media\\UI-StatusBar")
end)

for i = 1, MAX_BOSS_FRAMES do
  _G["Boss"..i.."TargetFrameHealthBar"]:SetStatusBarTexture("Interface\\AddOns\\KlazUnitFrames\\Media\\UI-StatusBar")
  _G["Boss"..i.."TargetFrameManaBar"]:SetStatusBarTexture("Interface\\AddOns\\KlazUnitFrames\\Media\\UI-StatusBar")
end

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

  self:SetStatusBarTexture("Interface\\AddOns\\KlazUnitFrames\\Media\\UI-StatusBar")

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
for i = 1, MAX_BOSS_FRAMES do
    local f = _G["Boss"..i.."TargetFrame"]
    f:SetParent(UIParent)
    f:SetScale(1.1)
end

-- reduce gap between boss frames
for i = 2, MAX_BOSS_FRAMES do
    _G["Boss"..i.."TargetFrame"]:SetPoint("TOPLEFT", _G["Boss"..(i-1).."TargetFrame"], "BOTTOMLEFT", 0, 0)
end
