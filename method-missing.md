###### METHOD MISSING

<pre>
class Human
  def method_missing(m, *args, &block)
    puts "Hello"
  end
end

Human.new.sound
Human.new.any_method_you_can_think_of
</pre>

[Next - Duck Typing](https://github.com/Ken-Richard/mu-ruby-intro/blob/master/duck-typing.md)