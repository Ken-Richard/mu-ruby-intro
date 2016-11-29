# Ruby Classes
Nothing Unexpected Here

<pre>
class Dog
  def sound
    puts "Woof"
  end
end

class Cat
  def sound
    puts "Meow"
  end
end

dog = Dog.new
cat = Cat.new

dog.sound
cat.sound
</pre>

# DUCK TYPING
If it qu

list = [dog, cat, Human.new]
list.each { |animal| animal.sound }


###### METHOD MISSING

class Human
  def method_missing(m, *args, &block)
    puts "Hello"
  end
end

Human.new.sound

###### DUCK TYPING

list = [dog, cat, Human.new]
list.each { |animal| animal.sound }

###### DYNAMIC CLASSES

def add_scratch_class_method(obj)
  obj.class.class_eval do
    def scratch
      "Ouch!"
    end
  end
end

cat1 = Cat.new
cat2 = Cat.new
add_scratch_class_method(cat1)
cat1.scratch
cat2.scratch
Cat.new.scratch


###### DANGER

add_scratch_class_method("This is a string")
"hello".scratch


###### DYNAMIC OBJECTS

def add_nap_instance_method(obj)
  obj.instance_eval do
    def nap
      "Yawn"
    end
  end
end

add_nap_instance_method(cat1)
cat1.nap
cat2.nap
Cat.new.nap

string = "Hello World"
add_nap_instance_method(string)
string.nap
"Hello World.nap"

