require './number.rb'
require './variable.rb'
require './add.rb'
require './assign.rb'
require './lessthan.rb'
require './while.rb'
require './multiply.rb'

puts "---------Assign----------"
p statement = Assign.new(:y, Add.new(Variable.new(:x), Number.new(1)))
p statement.to_ruby
proc1 = eval(statement.to_ruby)
p proc1.call({x: 3})

puts "---------While----------"
p statement2 =
  While.new(
    LessThan.new(Variable.new(:x), Number.new(5)),
    Assign.new(:x, Multiply.new(Variable.new(:x), Number.new(3)))
  )
p statement2.to_ruby
proc2 = eval(statement2.to_ruby)
p proc2.call({x: 1})
