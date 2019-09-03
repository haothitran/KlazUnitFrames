--------------------------------------------------------------------------------
-- // MODULES / CAST BARS
--------------------------------------------------------------------------------

-- player
CastingBarFrame:SetStatusBarColor(25/255, 148/255, 255/255)
CastingBarFrame.SetStatusBarColor = function() end

-- target
-- hooksecurefunc(TargetFrameSpellBar, 'Show', function()
-- 	TargetFrameSpellBar:ClearAllPoints()
-- 	TargetFrameSpellBar:SetPoint('CENTER', UIParent, 'CENTER', 0, 100)
-- 	TargetFrameSpellBar.SetPoint = function() end
--   TargetFrameSpellBar:SetScale(1.4)
-- end)

--------------------------------------------------------------------------------
-- TIMER
--------------------------------------------------------------------------------

CastingBarFrame.timer = CastingBarFrame:CreateFontString(nil)
CastingBarFrame.timer:SetFont(STANDARD_TEXT_FONT, 12, 'THINOUTLINE')
CastingBarFrame.timer:SetPoint('TOP', CastingBarFrame, 'BOTTOM', 0, -4)
CastingBarFrame.update = 0.1

TargetFrameSpellBar.timer = TargetFrameSpellBar:CreateFontString(nil)
TargetFrameSpellBar.timer:SetFont(STANDARD_TEXT_FONT, 12, 'THINOUTLINE')
TargetFrameSpellBar.timer:SetPoint('LEFT', TargetFrameSpellBar, 'RIGHT', 2, 0)
TargetFrameSpellBar.update = 0.1

local function CastingBarFrame_OnUpdate_Hook(self, elapsed)
  if not self.timer then return end
  if self.update and self.update < elapsed then
    if self.casting then
      self.timer:SetText(format('%.1f', max(self.maxValue - self.value, 0)))
    elseif self.channeling then
      self.timer:SetText(format('%.1f', max(self.value, 0)))
    else
      self.timer:SetText('')
    end
    self.update = .1
  else
    self.update = self.update - elapsed
  end
end

CastingBarFrame:HookScript('OnUpdate', CastingBarFrame_OnUpdate_Hook)
TargetFrameSpellBar:HookScript('OnUpdate', CastingBarFrame_OnUpdate_Hook)
