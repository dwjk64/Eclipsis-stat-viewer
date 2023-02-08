local userName = "Username"

local http = game:GetService("HttpService")

local TotalTime = tick()

print("Decoding userId json")
local response = http:GetAsync('https://api.xethlyx.com/roblox/user_id/'..userName)
local userId = http:JSONDecode(response)

if userId.success == true then
	print("Done!")
	print("Time Taken: "..tick()-TotalTime)
	print("------------------------------")
else
	print("Failed to load userId")
	print("------------------------------")
end

local Time = tick()

print("Decoding Matches json")
local response = http:GetAsync('https://api.xethlyx.com/eclipsis/user/matches/'..userId.id)
local match = http:JSONDecode(response)
local totalmatch = #match

print("Done!")
print("Time Taken: "..tick()-Time)
print("------------------------------")

local Time = tick()

print("Decoding Playtime json")
local response = http:GetAsync('https://api.xethlyx.com/eclipsis/user/playtime/'..userId.id)
local playtimeinfo = http:JSONDecode(response)

if playtimeinfo.success == true then
	print("Done!")
	print("Time Taken: "..tick()-Time)
	print("------------------------------")
	print("userId: "..userId.id)
	print("Playtime: "..playtimeinfo.playtime)
	print("Total Matches: "..totalmatch)
	print("Made by dwjk64")
	print("Total Time Taken: "..tick()-TotalTime)
	print("------------------------------")
else
	print("Failed to load Playtime")
	print("------------------------------")
end
