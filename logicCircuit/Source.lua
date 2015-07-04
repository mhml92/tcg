local Source = Class("Source", Vertex)

function Source:initialize(value)
	Vertex.initialize(self)

	self.value = value
end

function Source:value()
	return self.value
end

function Source:toggle()
	self.value = not self.value
end

return Source
