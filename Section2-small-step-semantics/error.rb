require './number.rb'
require './boolean.rb'
require './add.rb'
require './variable.rb'
require './assign.rb'
require './sequence.rb'
require './machine.rb'

Machine.new(
  Sequence.new(
    Assign.new(:x, Boolean.new(true)),
    Assign.new(:y, Add.new(Variable.new(:x), Number.new(3)))
  ),
  {}
).run
