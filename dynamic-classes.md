###### DYNAMIC CLASSES

<pre>

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

</pre>

[Next - Danger!](https://github.com/Ken-Richard/mu-ruby-intro/blob/master/dynamic-classes-danger.md)