local Class = require "../middleclass/middleclass"



local Edge = Class("Edge")

Edge.static.id = 0

function Edge:initialize(from,to weight)
	self.from = from
	self.to = to
	self.weight = weight or 0
	self.ID = Edge.static:getNewID()

	self.from:addOut(self)
	self.to:addIn(self)
end

function Edge:delete()
	self.from:removeOut(self)
	self.to:removeIn(self)
end


function Edge:setWeight(w)
	self.weight = w
end

function Edge:getID()
	return self.id
end


function Edge.static:getNewID()
	local id = Edge.static.id
	Edge.static.id = Edge.static.id + 1
	return id
end

return Edge

