# Playground

### Why Ruby?

Can you write down the Java code to open `text_file.txt` and output the content?
 
- without IDE
- without Google

![](http://image.slidesharecdn.com/rubyforjavaguys-120831090906-phpapp02/95/ruby-for-java-developers-27-638.jpg?cb=1382880627)

```ruby
puts File.read 'text_file.txt'
```

- No interface
- No static types
- No generics
- No annotations

### Basics

[To Ruby From Java](https://www.ruby-lang.org/en/documentation/ruby-from-other-languages/to-ruby-from-java/)

- `foo = Foo.new("hi")` instead of `Foo foo = new Foo("hi")`
- **YAML** tends to be facvored over XML
- Use `==` when you want to test equivalence in Ruby (`equals()` in Java)
- Use `equals?()` when you want to know if yow objects are the same (`==` in Java)

[Ruby for Java Developers](http://www.slideshare.net/robertreiz/ruby-for-java-developers)

[Ruby 20분 가이드](https://www.ruby-lang.org/ko/documentation/quickstart/)


### Function Basics

```ruby
name = nil

def greetz(name = "Rob")
  p "Hello #{name}" if name
  p "Hello" unless name
end

```

### Array, Hash Basics

```ruby
# array
names = Array.new
names << "Hans"
names << "Hoon"
names << "Tanz"

p names[0]
p names[1]
p names.first
p names.last

names.each do |name|
  p "#{name}"
end

movies = ['Spiderman', 'Batman', 'Hulk']

movies.each do |m|
  p "#{m}"
end

# hash
h = Hash.new # {}
h["a"] = 100 # {"a"=> 100}
h["b"] = 200 # {"a"=>100, "b"=> 200}

p h["a"] # 100
p h.delete("a") # 100
p h # {"b"=> 200}

h["c"] = 300
h.each {|k, v| puts "#{k}, #{v}" }

h.each do |k, v|
  puts "#{k}, #{v}"
end
```
 
### Duck Typing

[Wiki: 덕 타이핑](http://www.wikiwand.com/ko/%EB%8D%95_%ED%83%80%EC%9D%B4%ED%95%91)

> 덕 타이핑에서는, 객체의 타입보다 객체가 사용되는 양상이 더 중요하다. 예를 들면, 덕 타이핑이 없는 프로그래밍 언어로는 오리 타입의 객체을 인자로 받아 객체의 걷기 메소드와 꽥꽥거리기 메소드를 차례로 호출하는 함수를 만들 수 있다. 반면에, 같은 함수를 덕 타이핑이 지원되는 언어에서는 인자로 받는 객체의 타입을 검사하지 않도록 만들 수 있다. 걷기 메소드나 꽥꽥거리기 메소드를 호출 할 시점에서 객체에 두 메소드가 없다면 런타임 에러가 발생하고, 두 메소드가 제대로 구현되어 있다면 함수는 정상적으로 작동한다. 여기에는 인자로 받은 객체가 걷기 메소드와 꽥꽥거리기 메소드를 갖고 있다면 객체를 오리 타입으로 간주하겠다는 암시가 깔려있다. 바로 이 점이 앞에서 인용한 덕 테스트의 사상과 일치하기 때문에 덕 타이핑이라는 이름이 붙었다.
  

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


