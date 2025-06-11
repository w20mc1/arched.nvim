-- thx chatgpt
local M = {}

local template = [[
%s
%s
%s
        \   ^__^
         \  (oo)\_______
            (__)\       )\/\
                ||----w |
                ||     ||
]]

local function make_bubble(lines)
  local width = 0
  for _, line in ipairs(lines) do
    width = math.max(width, #line)
  end

  local top = " " .. string.rep("_", width + 2)
  local bottom = " " .. string.rep("-", width + 2)
  local bubble = {}

  for i, line in ipairs(lines) do
    local padded = line .. string.rep(" ", width - #line)
    local border_left, border_right
    if #lines == 1 then
      border_left, border_right = "<", ">"
    elseif i == 1 then
      border_left, border_right = "/", "\\"
    elseif i == #lines then
      border_left, border_right = "\\", "/"
    else
      border_left, border_right = "|", "|"
    end
    table.insert(bubble, string.format("%s %s %s", border_left, padded, border_right))
  end

  return top, table.concat(bubble, "\n"), bottom
end

function M.cowsay(lines)
  local top, bubble, bottom = make_bubble(lines)
  local cow = string.format(template, top, bubble, bottom)
  local result = {}
  for line in cow:gmatch("[^\r\n]+") do
    table.insert(result, line)
  end
  return result
end

return M
