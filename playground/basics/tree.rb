class Tree
  attr_accessor :name, :nodes

  def initialize(name, nodes=[])
    @name = name
    @nodes = nodes
  end

  def visit_all(&block)
    visit &block
    nodes.each {|n| n.visit_all &block}
  end

  def visit()
    yield self
    # or
    # block.call self
  end

end

tree = Tree.new("Ruby", [Tree.new("JRuby"), Tree.new("MacRuby")])

tree.visit_all {|node| puts "Node: #{node.name}"}
