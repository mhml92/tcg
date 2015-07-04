local Or = Class("And","Vertex")

function Or:initialize()
	Vertex.initialize(self)
end

function Or:value(input)
	for k,v in ipairs(input) do
		if v == true then
			return true
		end
	end
	retun false
end

	
return Or
