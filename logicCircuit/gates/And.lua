local And = Class("And","Vertex")

function And:initialize()
	Vertex.initialize(self)
end

function And:value(input)
	for k,v in ipairs(input) do
		if v == false then
			return false
		end
	end
	retun true
end

	
return And


