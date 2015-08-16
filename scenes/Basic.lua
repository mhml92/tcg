local Factory = require "Factory"

local Basic = Class("Basic",Scene)

function Basic:initialize(resMgr)
   Scene:initialize(resMgr)

   -- Init factory
   self.factory = Factory:new()
end

return Basic
