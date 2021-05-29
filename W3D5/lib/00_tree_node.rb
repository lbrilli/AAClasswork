require "byebug"
class PolyTreeNode
    attr_reader :parent, :children, :value

    def initialize(value)
        @value = value
        @parent = nil
        @children = []
    end

    def parent=(new_node)
        old_parent = @parent
        @parent = new_node  
        
        if !new_node.nil? && !new_node.children.include?(self) 
            new_node.children << self
            if !old_parent.nil?
                old_parent.children.delete(self)
            end
        end

    end

    def add_child(child_node)
       child_node.parent = self
    end

    def remove_child(child_node)
        if child_node.parent == self
            child_node.parent = nil 
        else
            raise "not a child of this parent"
        end
    end 

    def dfs(target_value)

        #BASE CASE
        return self if target_value == @value

        #INDUCTIVE CASE
        self.children.each do |node|
            curr_node = node.dfs(target_value)
            return curr_node unless curr_node == nil
        end
        nil
    end

    def bfs(target_value)

        #BASE CASE
        return self if target_value == @value
        #INDUCTIVE STEP
        queue = [self]

        until queue.empty?
            #left side use shift to remove first element
            curr_node = queue.shift 
            return curr_node if curr_node.value == target_value

            curr_node.children.each do |node|
                queue.push(node)
            end
        end
        nil
    end
end