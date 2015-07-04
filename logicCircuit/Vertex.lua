local Vertex = Class("Vertex")

function Vertex:initialize()
	self.incoming = {}
	self.outgoing = {}
end

function Vertex:addIn(edge, index)
	self.incoming[edge:getID()] = edge
	return true
end

function Vertex:addOut(edge)
	self.outgoing[edge:getID()] = edge
	return true
end

function Vertex:removeIn(edge)
	self.incoming[edge:getID()] = nil
end

function Vertex:removeOut(edge)
	self.incoming[edge:getID()] = nil
end

function Vertex:getValue()
	local args = {}
	for k,v in pairs(self.incoming) do
		local arg = v:getValue()
		table.insert(args, arg)
	end
	return self:value(args)
end

return Vertex
