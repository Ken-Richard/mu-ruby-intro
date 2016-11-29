# Ruby Blocks
Nothing Unexpected Here

<pre>
def transform(a1)
  puts "BEFORE: #{a1}"
  after = yield(a1)
  puts "AFTER: #{after}"
end

transform("hello") { |q| q.upcase }
transform("hello") { |q| q.reverse }
</pre>

[Next - Method Missing](https://github.com/Ken-Richard/mu-ruby-intro/blob/master/method-missing.md)