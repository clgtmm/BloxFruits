
--[[Hello xin chao cac ban dumper hoac dai loai vay minh la skidder so 1 viet nam ok nha]]
local AimBotCaiDitMeMay = nil
local Mouse = game.Players.LocalPlayer:GetMouse()
AimBotCaiDitMeMay = hookmetamethod(game, "__index", newcclosure(function(self, Index)
    if self == Mouse and not checkcaller() and GetClosestPlayer() then
	local HitPart = GetClosestPlayer()
        if Index == "Hit" or Index == "hit" then
            return HitPart.CFrame
        end
    end
    return AimBotCaiDitMeMay(self, Index)
end))
