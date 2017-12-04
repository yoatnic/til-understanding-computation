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

puts '----------nfa_design------------'
nfa_design = Empty.new.to_nfa_design
p nfa_design.accepts?('')
p nfa_design.accepts?('a')
nfa_design_literal = Literal.new('a').to_nfa_design
p nfa_design_literal.accepts?('')
p nfa_design_literal.accepts?('a')
p nfa_design_literal.accepts?('b')

puts '----------matches------------'

p Empty.new.matches?('a')
p Literal.new('a').matches?('a')
pattern = Concatenate.new(Literal.new('a'), Literal.new('b'))
p pattern.matches?('a')
p pattern.matches?('ab')
p pattern.matches?('abc')

puts '----------choose------------'

p pattern = Choose.new(Literal.new('a'), Literal.new('b'))
p pattern.matches?('a')
p pattern.matches?('b')
p pattern.matches?('c')