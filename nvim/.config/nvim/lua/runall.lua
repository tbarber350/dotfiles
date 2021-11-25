local function scandir(directory)
  local i, t, popen = 0, {}, io.popen
  local pfile = popen('ls  "'..directory..'"')
  for filename in pfile:lines() do
    i = i + 1
      t[i] = filename
  end
  pfile:close()
  return t
end

local files = scandir('/Users/us16777/.config/nvim/lua/travis')

for _, val in pairs(files) do
  local temp = val:gsub('.lua', '')
  require('travis.'..temp)
end
