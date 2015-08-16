local GateKeeper = require 'logicCircuit/GateKeeper'

local Factory = Class('Factory')

function Factory:initialize()
   self.GateKeeper = GateKeeper:new()
end

