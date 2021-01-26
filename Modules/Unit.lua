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

hooksecurefunc('PlayerFrame_ToPlayerArt', function(self)
  self.healthbar:SetStatusBarTexture(.75, .75, .75)
  PetFrameHealthBar:SetStatusBarTexture(.75, .75, .75)
  PetFrameManaBar:SetStatusBarTexture(.75, .75, .75)
end)

hooksecurefunc('TargetFrame_CheckClassification', function(self)
  self.healthbar:SetStatusBarTexture(.75, .75, .75)
  TargetFrameToTHealthBar:SetStatusBarTexture(.75, .75, .75)
  TargetFrameToTManaBar:SetStatusBarTexture(.75, .75, .75)
end)

for i = 1, MAX_BOSS_FRAMES do
  _G['Boss'..i..'TargetFrameHealthBar']:SetStatusBarTexture(.75, .75, .75)
  _G['Boss'..i..'TargetFrameManaBar']:SetStatusBarTexture(.75, .75, .75)
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
-- 0 = mana
-- 1 = rage
-- 2 = focus
-- 3 = energy
-- 4 = copy points
-- 5 = runes
-- 6 = runic power
-- 7 = soul shards
-- 8 = lunar power
-- 9 = holy power
-- 10 = alternate power
-- 11 = maelstrom
-- 12 = chi
-- 13 = insanity
-- 14 = ?
-- 15 = ?
-- 16 = arcane charges
-- 17 = fury
-- 18 = pain

hooksecurefunc('UnitFrameManaBar_UpdateType', function(self)
  local power = UnitPowerType(self.unit)

  -- self:SetStatusBarTexture(.75, .75, .75)

  -- change mana colour to lighter blue
  if power == 0 then
    self:SetStatusBarColor(0, .5, 1)
  end
end)
