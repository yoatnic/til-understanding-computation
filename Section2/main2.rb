require './number.rb'
require './add.rb'
require './variable.rb'
require './assign.rb'
require './machine.rb'

Machine.new(
  Assign.new(:x, Add.new(Variable.new(:x), Number.new(1))),
  {x: Number.new(2)}
).run
