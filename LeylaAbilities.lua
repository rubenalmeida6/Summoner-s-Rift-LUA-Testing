-- VARIABLES

local BaseAbilityModule = require(game.ReplicatedStorage.BaseAbilityModule)

local LeylaAbilities = setmetatable({}, BaseAbilityModule)		-- Creates new table named LeylaAbilities
	LeylaAbilities.__index = LeylaAbilities							-- Sets the index of the table to the table itself
	
	function LeylaAbilities:new()									-- New constructor, creates "obj" and sets it's metatable to self
		local obj = setmetatable({				
			lastQUse = 0,
			lastEUse = 0,
			lastRUse = 0,
			QCooldown = 12,
			ECooldown = 8,
			RCooldown = 110,
		}, LeylaAbilities)
		return obj													-- Returns the new table
	end

	function LeylaAbilities:activateQ()									-- Activates Leyla's Q ability	
		local currentTime = tick()	
		
		if currentTime >= (self.lastQUse + self.QCooldown) then
			self.lastQUse = currentTime
			print("Leyla Q activated.")
		else
			print("Leyla's Q ability is on cooldown!")
		end
	end


	function LeylaAbilities:activateE()								-- Activates Leyla's E ability
		local currentTime = tick()
	
		if currentTime >= (self.lastEUse + self.ECooldown) then
			self.lastEUse = currentTime
			print("Leyla E activated.")
		else
			print("Leyla's E ability is on cooldown!")
		end
	end

	function LeylaAbilities:activateR()									-- Activates Leyla's R ability
		local currentTime = tick()
		
		if currentTime >= (self.lastRUse + self.RCooldown) then
			self.lastRUse = currentTime
			print("Leyla R activated.")
		else
			print("Leyla's R ability is on cooldown.")
		end
	end

	print("LeylaAbilities loaded.")										-- For debugging porposes, checks if LeylaAbilities module has been correctly loaded, other than that dont mind!!

return LeylaAbilities

-- Rest of the champions are based on the same script
