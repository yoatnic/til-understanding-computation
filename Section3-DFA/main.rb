require './DFARulebook.rb'
require './FARule.rb'
require './DFA.rb'
require './DFADesign.rb'

rulebook = DFARulebook.new([
  FARule.new(1, 'a', 2), FARule.new(1, 'b', 1),
  FARule.new(2, 'a', 2), FARule.new(2, 'b', 3),
  FARule.new(3, 'a', 3), FARule.new(3, 'b', 3)
])

p rulebook.next_state(1, 'a')
p rulebook.next_state(1, 'b')
p rulebook.next_state(2, 'b')

p DFA.new(1, [1, 3], rulebook).accepting?
p DFA.new(1, [3], rulebook).accepting?

puts '--------DFA--------'
dfa = DFA.new(1, [1, 3], rulebook)
p dfa.accepting?
3.times do dfa.read_character('a') end
p dfa.accepting?
dfa.read_character('b')
p dfa.accepting?

puts '--------DFA2--------'
dfa2 = DFA.new(1, [3], rulebook)
p dfa2.accepting?
dfa2.read_string('baab')
p dfa2.accepting?

puts '--------DFA Design--------'
dfa_design = DFADesign.new(1, [3], rulebook)
p dfa_design.accepts?('a')
p dfa_design.accepts?('baa')
p dfa_design.accepts?('baba')