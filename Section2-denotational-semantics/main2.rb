require './number.rb'
require './variable.rb'
require './add.rb'
require './assign.rb'

puts "---------Assign----------"
p statement = Assign.new(:y, Add.new(Variable.new(:x), Number.new(1)))
p statement.to_ruby
proc1 = eval(statement.to_ruby)
p proc1.call({x: 3})



