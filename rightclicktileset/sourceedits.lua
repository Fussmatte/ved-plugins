sourceedits =
{
    ["func"] =
    {
        {
            find = [[
function switchtileset()
	local maxtileset = 4
	if keyboard_eitherIsDown("shift") then
]],
            replace = [[
function switchtileset(rev)
    rev = rev or false
    local maxtileset = 4
    if keyboard_eitherIsDown("shift") or rev then
]],
            ignore_error = false,
            luapattern = false,
            allowmultiple = false,
        },
        {
            find = [[
function switchtilecol()
	if keyboard_eitherIsDown("shift") then
]],
            replace = [[
function switchtilecol(rev)
    rev = rev or false
    if keyboard_eitherIsDown("shift") or rev then
]],
            ignore_error = false,
            luapattern = false,
            allowmultiple = false,
        },
    },
    ["uis/maineditor/draw"] =
    {
        {
            find = [[
	if love.mouse.isDown("l") and nodialog and not mousepressed and mouseon(love.graphics.getWidth()-(7*16)-1, love.graphics.getHeight()-70, (6*16), 8+4) and not voided_metadata then -- -16-32-2-12-8 => -70
		-- Switch tileset
		switchtileset()
		mousepressed = true
	elseif love.mouse.isDown("l") and nodialog and not mousepressed and mouseon(love.graphics.getWidth()-(7*16)-1, love.graphics.getHeight()-58, (6*16), 8+4) and not voided_metadata then -- -16-24-2-8-8 => 58
		-- Switch tilecol
		switchtilecol()
		mousepressed = true
	end
]],
            replace = [[
	if love.mouse.isDown("l") and nodialog and not mousepressed and mouseon(love.graphics.getWidth()-(7*16)-1, love.graphics.getHeight()-70, (6*16), 8+4) and not voided_metadata then -- -16-32-2-12-8 => -70
		-- Switch tileset
		switchtileset()
		mousepressed = true
    elseif love.mouse.isDown("r")  and nodialog and not mousepressed and mouseon(love.graphics.getWidth()-(7*16)-1, love.graphics.getHeight()-70, (6*16), 8+4) and not voided_metadata then
        switchtileset(true)
        mousepressed = true
	elseif love.mouse.isDown("l") and nodialog and not mousepressed and mouseon(love.graphics.getWidth()-(7*16)-1, love.graphics.getHeight()-58, (6*16), 8+4) and not voided_metadata then -- -16-24-2-8-8 => 58
		-- Switch tilecol
		switchtilecol()
		mousepressed = true
    elseif love.mouse.isDown("r") and nodialog and not mousepressed and mouseon(love.graphics.getWidth()-(7*16)-1, love.graphics.getHeight()-58, (6*16), 8+4) and not voided_metadata then
        switchtilecol(true)
        mousepressed = true
	end
]],
            ignore_error = false,
            luapattern = false,
            allowmultiple = false,
        },
    },
}