# class Node
#   attr_accessor :data, :left, :right

#   def initialize(data=nil, left=nil, right=nil)
#     @data  = data
#     @left  = left
#     @right = right 
#   end


#   def self.left
#     Node.new
#   end

#   def self.right
#     Node.new
#   end

# end

class Node

  attr_accessor :left, :right, :data

  def initialize(data=nil, left=nil, right=nil)
    @data  = data
    @left  = left
    @right = right
  end

  private

end

class BinarySearchTree

  attr_accessor :root_node

  def initialize(data=nil)
    data != nil ? @root_node = Node.new(data) : nil
  end

  def push(num)
    if @root_node == nil
      @root_node = Node.new(num)
    else
      current_node = @root_node
      while != nil current_node 
        if (num > current_node.data) && (current_node.left == nil)
          current_node.left = Node.new(num)
        elsif (num == current_node.data) && (current_node.left == nil)
          current_node.left = Node.new(num)
        elsif (num < current_node.data) && (current_node.right == nil)
          current_node.right = Node.new(num)
        elsif num < current_node.data || num < current_node.data
          current_node = current_node.left
        elsif num > current_node.data
          current_node = current_node.right
        else
          return
        end
      end
    end
  end

end

    # case root_data <=> num
    # when 1 then @root_node.left.push(num)
    # when 0 then @root_node.left.push(num)
    # when -1 then @root_node.right.push(num)
    # end

  # def each(&block)
  #   left.each(&block) if left
  #   block.call(self)
  #   right.each(&block) if right
  # end

  # def <=>(other_node)
  #   data <=> other_node.data
  # end
  
  # def evaluate(num)
  #   if root_node.nil?
  #     @root_node = Node.new(num)
  #   elsif num == root_node.data
  #     @root_node.left = Node.new(num)
  #   elsif num < root_node.data
  #     @root_node.left = Node.new(num)
  #   elsif num > root_node.data
  #     @root_node.right = Node.new(num)
  #   else
  #     @root_node = Node.new(num)
  #   end
  # end

  # def full?(node)
  #   if node.nil?
  #     return false
  #   elsif !node.left.nil? && !node.right.nil?
  #     return true
  #   end
  # end
