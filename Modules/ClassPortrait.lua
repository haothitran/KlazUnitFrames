--------------------------------------------------------------------------------
-- // MODULES / CLASS PORTRAIT
--------------------------------------------------------------------------------

hooksecurefunc('UnitFramePortrait_Update', function(self)
  if self.portrait then
    if UnitIsPlayer(self.unit) then
      local p = CLASS_ICON_TCOORDS[select(2, UnitClass(self.unit))]
      if p then
        self.portrait:SetTexture('Interface\\TargetingFrame\\UI-Classes-Circles')
        self.portrait:SetTexCoord(unpack(p))
      end
    else
      self.portrait:SetTexCoord(0, 1, 0, 1)
    end
  end
end)
