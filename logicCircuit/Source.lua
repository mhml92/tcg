local Source = Class("Source", Vertex)

function Source:initialize(val)
	Vertex.initialize(self)

	self.val = val
end

function Source:value()
	return self.val
end

function Source:toggle()
	self.val = not self.val
end

return Source
