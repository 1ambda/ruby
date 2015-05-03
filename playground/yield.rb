p 3.class

class Fixnum
  def my_times
    i = self

    while i > 0
      i -= 1
      yield
    end
  end
end

3.my_times { p "welcome, Fixnum" }

def test
  puts "You are in the method"
  yield 3
  puts "You are again back to the method"
  yield 6
end
test {|i| puts "You are in the block #{i}"}

# block example

def call_block(&block)
  p block.class # Proc
  block.call
end

def yield_block()
  yield
end

def pass_block(&block)
  call_block(&block)
  yield_block &block
end

pass_block { p "This is block!" }

# class

p 4.class.class

