local handle = assert(io.popen('git describe --tags', 'r'))
local content = handle:read('*all')
print('Found document version:' .. content)
handle:close()
tex.sprint(content)
