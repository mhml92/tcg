local Edge     = require 'logicCircuit/Edge'
local And      = require 'logicCircuit/gates/And'
local Or       = require 'logicCircuit/gates/Or'
local Not      = require 'logicCircuit/gates/Not'
local Source   = require 'logicCircuit/Source'
local Vertec   = require 'logicCircuit/Vertex'

local GateKeeper = Class('GateKeeper')

--[[
   https://www.youtube.com/watch?v=N5uClrPrnO8
]]

function GateKeeper:initialize()

end

return GateKeeper

