
class Tree
  attr_accessor :leaf
  
  def initialize(leaf = {})
    @leaf = leaf
  end
  
  def visit_all(&block)
    visit &block
    leaf.each_value do
      |val|
      branch = Tree.new(val)
      branch.visit_all(&block)
    end
  end
  
  def visit(&block)
    leaf.each_key(&block)
  end
end

ruby_tree = Tree.new( {
  'grandpa' => {
     'dad' => {
       'child 1' => {}, 
       'child 2' => {}
     },
     'uncle' => {
       'child 3' => {},
       'child 4' => {}
     }
  }
} )

puts "Visiting a node"
ruby_tree.visit {|leaf| puts leaf}
puts

puts "visiting entire tree"
ruby_tree.visit_all {|leaf| puts leaf}