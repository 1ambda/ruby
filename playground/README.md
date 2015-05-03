# Playground

[To Ruby From Java](https://www.ruby-lang.org/en/documentation/ruby-from-other-languages/to-ruby-from-java/)

- `foo = Foo.new("hi")` instead of `Foo foo = new Foo("hi")`
- **YAML** tends to be facvored over XML


### Instance vs Class method

```ruby
class Foo
  def self.bar
    puts 'class method'
  end
  
  def baz
    puts 'instance method'
  end
end

Foo.bar # => "class method"
Foo.baz # => NoMethodError: undefined method ‘baz’ for Foo:Class

Foo.new.baz # => instance method
Foo.new.bar # => NoMethodError: undefined method ‘bar’ for #<Foo:0x1e820>
```


