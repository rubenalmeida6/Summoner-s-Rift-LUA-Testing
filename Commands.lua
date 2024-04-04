-- // VARIABLES:

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local PlrService = game:GetService("Players")

local prefix        = "!";

local champs = {
	"Azura";
	"Leyla";
};

function pullChampion(tgt, plr)
	for index, champName in pairs(champs) do
		if tgt == champName then
			if plr.currentChamp.Value ~= champName then
				print('Success!')
				plr.currentChamp.Value = champName
				break
			else
				print('This champion is currently selected!')
				break
			end
		end
	end
end

PlrService.PlayerAdded:Connect(function(Plr)
	local champSelected = Instance.new("StringValue", Plr)
	champSelected.Name = "currentChamp";
	champSelected.Value = "Azura";

	Plr.Chatted:Connect(function(Msg)
		print(Msg)

		if string.sub(Msg, 1, 7) == prefix .. "select" then
			local tokens = string.split(Msg, prefix .. "select ");
			local champ = tokens[2];

			print(champ)

			pullChampion(champ, Plr)
		end
	end)
end)



