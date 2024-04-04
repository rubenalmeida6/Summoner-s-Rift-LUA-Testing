local BaseAbilityModule = {}

	function BaseAbilityModule:new()		-- Creates new table called BaseAbilityModule
		local obj = {}						
		setmetatable(obj, self)
		self.__index = self
		return obj
	end
	
	function BaseAbilityModule:activateQ() -- Activates the general key for Q
	end
	
	function BaseAbilityModule:activateE() -- Activates the general key for E
	end
	
	function BaseAbilityModule:activateR() -- Activates the general key for R
	end

print("BaseAbilityModule loaded.")		   -- For debugging porposed, nvm this yeah 

return BaseAbilityModule

-- Base script, this is where all champs should end up.


