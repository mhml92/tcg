local Not = Class("Not", Vertex)

function Not:initialize()
	Vertex.initialize(self)
end

function Not:value(input)
   if #input == 1 then
      return not input[1]
   end
end

return Not
