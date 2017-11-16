require './number.rb'
require './boolean.rb'
require './variable.rb'
require './lessthan.rb'
require './add.rb'
require './multiply.rb'
require './assign.rb'
require './sequence.rb'
require './while.rb'

p Number.new(1).evaluate({})
p Boolean.new(true).evaluate({})
p Variable.new(:x).evaluate({x: Number.new(23)})
p LessThan.new(
  Add.new(Variable.new(:x), Number.new(2)),
  Variable.new(:y)
).evaluate({x: Number.new(2), y: Number.new(5)})

puts '--------Seq-------'
p statement = Sequence.new(
  Assign.new(:x, Add.new(Number.new(1), Number.new(1))),
  Assign.new(:y, Add.new(Variable.new(:x), Number.new(3)))
)
p statement.evaluate({})

puts '--------While-------'
p statement_while = While.new(
  LessThan.new(Variable.new(:x), Number.new(5)),
  Assign.new(:x, Multiply.new(Variable.new(:x), Number.new(3)))
)
p statement_while.evaluate({x: Number.new(1)})
