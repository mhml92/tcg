local Edge     = require "logicCircuit/Edge"
local And      = require "logicCircuit/gates/And"
local Or       = require "logicCircuit/gates/Or"
local Not      = require "logicCircuit/gates/Not"
local Source   = require "logicCircuit/Source"

local Test = Class("Test")

function Test:initialize()
	s0 = Source:new(true)
	s1 = Source:new(false)
	s2 = Source:new(true)

	or0 = Or:new()
	and0 = And:new()
   not0 = Not:new()

	edge0 = Edge:new(s0, or0)
	edge1 = Edge:new(s1, or0)
	edge2 = Edge:new(s2, and0)
	edge3 = Edge:new(or0, and0)
   edge5 = Edge:new(and0,not0)

	print(not0)
	if not0:getValue() then
		print("true")
	else
		print("false")
	end
end

return Test
