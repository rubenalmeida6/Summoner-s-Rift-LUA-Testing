

local BaseAbilityModule = require(game.ReplicatedStorage.BaseAbilityModule)

local AzuraAbilities = setmetatable({}, BaseAbilityModule)
	AzuraAbilities.__index = AzuraAbilities		
	
	function AzuraAbilities:new()
		local obj = setmetatable({
			lastQUse = 0,
			lastEUse = 0,
			lastRUse = 0,
			QCooldown = 5,
			ECooldown = 5,
			RCooldown = 10,
		}, AzuraAbilities)
		return obj
	end
	
	function AzuraAbilities:activateQ()
		local currentTime = tick()
		
		if currentTime >= (self.lastQUse + self.QCooldown) then
			self.lastQUse = currentTime
			print("Azura Q activated.")
		else
			print("Azura's Q ability is on cooldown!")
		end
	end
	
	function AzuraAbilities:activateE()
		local currentTime = tick()
		
		if currentTime >= (self.lastEUse + self.ECooldown) then
			self.lastEUse = currentTime
			print("Azura E activated.")
		else
			print("Azura's E ability is on cooldown!")
		end
	end
	
	function AzuraAbilities:activateR()
		local currentTime = tick()
		if currentTime >= (self.lastRUse + self.RCooldown) then
			self.lastRUse = currentTime
			print("Azura R activated.")
		else
			print ("Azura's Ultimate is on cooldown!")
		end
	end
	
	print("AzuraAbilities loaded.")
	
return AzuraAbilities
