# DYNAMIC OBJECTS

<pre>
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
</pre>

[Next - Dynamic Classes](https://github.com/Ken-Richard/mu-ruby-intro/blob/master/dynamic-classes.md)