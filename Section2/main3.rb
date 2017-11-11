require './number.rb'
require './boolean.rb'
require './add.rb'
require './variable.rb'
require './donothing.rb'
require './assign.rb'
require './if.rb'
require './machine.rb'

Machine.new(
  If.new(Variable.new(:x), Assign.new(:y, Number.new(1)), DoNothing.new),
  {x: Boolean.new(false)}
).run