pico-8 cartridge // http://www.pico-8.com
version 27
__lua__
-- gamecart sample
-- by @cameron

function _init()
 -- import the character
 #include character.p8l
 -- now show and play the game
 show_init()
end




-->8
-- character show and select

function show_init()
 _update = show_update
	_draw = show_draw
end

function show_update()
 if btnp(🅾️) then 
  game_play()
	elseif btnp(❎) then 
	 export_init() 
	end
end

function show_draw()
 cls()
 for k,v in pairs(character) do
 	if k != "name" then
 		if v then v = "true" else v = "false" end
 		print(k..": "..v)
 	end
 end
	print("🅾️: play the game (change stats)")
	print("❎: send "..character["name"].." back to metacart.")
end

function game_play()
	-- for demo purpose, we just flip
	-- all the values between t and f
	-- in real gameplay, anything 
	-- could happen.
	
	 for k,v in pairs(character) do
 	if k != "name" then
 	 character[k] = not(v)	
 	end
 end
end
-->8
-- character export

function export_init()
	_update = export_update
	_draw = export_draw
	file = "character"
	-- export character for #include
	-- init a new character file
	printh('character={}', file, true)
	printh('character["name"] = "'.. character["name"]..'"', file, false)
	for k,v in pairs(character) do
		if k != "name" then 
		 if v then v = "true" else v = "false" end
			 printh('character["'..k..'"] = '..v, file, false)
			end
		end
 status = "success"
end

function export_update()
	if btnp(❎) then stop() end
end

function export_draw()
	cls()
	print(status.."\n❎ to end,\nthen type folder to see file")
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
