local Or = Class("Or", Vertex)

function Or:initialize()
	Vertex.initialize(self)
end

function Or:value(input)
	for k,v in ipairs(input) do
		if v == true then
			return true
		end
	end
	return false
end

	
return Or
