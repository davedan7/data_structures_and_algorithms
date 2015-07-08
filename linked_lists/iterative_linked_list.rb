class LinkedList
	attr_reader :head


	def push(data)
		@data = data
		@count += 1
	end

end

class Node
	attr_reader :data
	attr_accessor :next_node

	def initialize(data, next_node= nil)
		@data = data
		@next_node = next_node
	end
	

end

