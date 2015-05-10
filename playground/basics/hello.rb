class Basic
  def hash
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
  end

  def function
    name = nil

    def greetz(name = "Rob")
      p "Hello #{name}" if name
      p "Hello" unless name
    end
  end

  def array
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
  end

  def array2
    animals = ['lions', 'tigers', 'bears']
    p animals[-2]
    p animals[10]
    p animals[0..1]

    p (0..1).class
    p [1].class

    p [1].methods.include?('[]')
  end

  def hash2
    stuff = {:arr => [1, 2, 3], :str => "Hi Mom!"}
    p stuff
    p stuff[:arr]

    p stuff.object_id
    p :arr.object_id
    p :str.object_id
  end

  def hash3
    def greet(people = {})
      puts "Hello, #{:teacher.object_id}" if people[:teacher] == :sam
    end

    greet :teacher => :sam
    greet :student => :jack
  end

end


