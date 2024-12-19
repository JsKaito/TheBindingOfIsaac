local mod = RegisterMod("D6 ignores Car Battery", 1)

local D6 = CollectibleType.COLLECTIBLE_D6
local EternalD6 = CollectibleType.COLLECTIBLE_ETERNAL_D6
local D100 = CollectibleType.COLLECTIBLE_D100
local DInfinity = CollectibleType.COLLECTIBLE_D_INFINITY

function mod:UsarActivo(ItemActivo, rng, Jugador, useFlags, SlotActiva, VariableData)
  if (ItemActivo == D6) or (ItemActivo == EternalD6) or (ItemActivo == D100) or (ItemActivo == DInfinity) then
      if useFlags & UseFlag.USE_CARBATTERY ~= 0 then
      return true
    end
  end
end

mod:AddCallback(ModCallbacks.MC_PRE_USE_ITEM, mod.UsarActivo)
