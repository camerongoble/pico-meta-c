pico-8 cartridge // http://www.pico-8.com
version 27
__lua__
-- metacart character manager
-- by @cameron

function _init()
	-- define a dictionary
	dict = {"light", "dark", "fire", "water", "earth", "air", "life", "death"}

	-- define a character based on the dict
	character = {}
	character["name"] = "bob"
	for i = 1,#dict do
		character[dict[i]] = true
	end
 char_init()
end




-->8
-- character show and select

function char_init()
 _update = char_update
	_draw = char_draw
end

function char_update()
	if btnp(❎) then
	 export_init()
	end
end

function char_draw()
 cls()
 for k,v in pairs(character) do
 	if k != "name" then
 		print(k..": "..tostr(v))
 	end
 end
	print("❎ to export "..character["name"]..".")
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
			 printh('character["'..k..'"] = '..tostr(v), file, false)
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
