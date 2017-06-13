# Let Tree Class initializer accept a nested structure of hashes

class Tree
    attr_accessor :children, :node_name

    def initialize(options)
        @node_name, children_def = options[:tree_def].first
        @children = children_def.collect { |name, children|
            Tree.new({:tree_def => {name => children}})
        }
    end


    def visit_all(&block)
        visit &block
        children.each {|c| c.visit_all &block}
    end

    def visit(&block)
        block.call self
    end
end

input = {'grandpa' => 
            {'dad' => 
                {'child 1' => {}, 
                 'child 2' => {}
                }, 
            'uncle' => {}
        }
    }

ruby_tree = Tree.new({:tree_def => input})

puts "Visiting a node"
ruby_tree.visit {|node| puts node.node_name}

puts "visiting entire tree"
ruby_tree.visit_all {|node| puts node.node_name}
