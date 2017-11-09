require './number.rb'
require './add.rb'
require './variable.rb'
require './machine.rb'

print Machine.new(
  Add.new(Variable.new(:x), Variable.new(:y)),
    {x: Number.new(1), y:Number.new(2)}
).run