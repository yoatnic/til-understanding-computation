require './number.rb'
require './boolean.rb'
require './add.rb'
require './variable.rb'
require './donothing.rb'
require './assign.rb'
require './if.rb'
require './sequence.rb'
require './while.rb'
require './lessthan.rb'
require './multiply.rb'
require './machine.rb'

Machine.new(
  If.new(Variable.new(:x), Assign.new(:y, Number.new(1)), DoNothing.new),
  {x: Boolean.new(false)}
).run

puts "-------- Seq ---------"
Machine.new(
  Sequence.new(
    Assign.new(:x, Add.new(Number.new(1), Number.new(1))),
    Assign.new(:y, Add.new(Variable.new(:x), Number.new(3)))
  ),
  {}
).run

puts "-------- While ---------"
Machine.new(
  While.new(
    LessThan.new(Variable.new(:x), Number.new(5)),
    Assign.new(:x, Multiply.new(Variable.new(:x), Number.new(3)))
  ),
  {x: Number.new(1)}
).run