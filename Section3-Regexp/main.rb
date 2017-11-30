require './Choose.rb'
require './Concatenate.rb'
require './Empty.rb'
require './Literal.rb'
require './Repeat.rb'

p pattern =
  Repeat.new(
    Choose.new(
      Concatenate.new(Literal.new('a'), Literal.new('b')),
      Literal.new('a')
    )
  )