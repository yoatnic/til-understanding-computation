require './number.rb'
require './boolean.rb'
require './variable.rb'
require './add.rb'
require './multiply.rb'
require './lessthan.rb'

p Number.new(5).to_ruby
p Boolean.new(false).to_ruby

puts "---------Number----------"

p proc1 = eval(Number.new(5).to_ruby)
p proc1.call({})

puts "---------Boolean----------"

p proc2 = eval(Boolean.new(false).to_ruby)
p proc2.call({})

puts "---------Variable----------"

p expressison = Variable.new(:x)
p expressison.to_ruby
p proc3 = eval(expressison.to_ruby)
p proc3.call({x: 7})

puts "---------Add----------"
p Add.new(Variable.new(:x), Number.new(1)).to_ruby

puts "---------LessThan----------"
p LessThan.new(Add.new(Variable.new(:x), Number.new(1)), Number.new(3)).to_ruby

puts "---------Expression----------"

enviroment = {x: 3}
p proc4 = eval(Add.new(Variable.new(:x), Number.new(1)).to_ruby)
p proc4.call(enviroment)
p proc5 = eval(
  LessThan.new(Add.new(Variable.new(:x), Number.new(1)), Number.new(3)).to_ruby
)
p proc5.call(enviroment)
