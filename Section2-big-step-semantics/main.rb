require './number.rb'
require './boolean.rb'
require './variable.rb'
require './lessthan.rb'
require './add.rb'

p Number.new(1).evaluate({})
p Boolean.new(true).evaluate({})
p Variable.new(:x).evaluate({x: Number.new(23)})
p LessThan.new(
  Add.new(Variable.new(:x), Number.new(2)),
  Variable.new(:y)
).evaluate({x: Number.new(2), y: Number.new(5)})