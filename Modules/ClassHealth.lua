--------------------------------------------------------------------------------
-- // MODULES / CLASS HEALTH
--------------------------------------------------------------------------------

local function ClassHealth(self)
  if UnitIsPlayer(self.unit) then
    local class = RAID_CLASS_COLORS[select(2, UnitClass(self.unit))]
    if class then
      self:SetStatusBarColor(class.r, class.g, class.b)
    end
  end
end

hooksecurefunc('UnitFrameHealthBar_Update', ClassHealth)
hooksecurefunc('HealthBar_OnValueChanged', ClassHealth)
