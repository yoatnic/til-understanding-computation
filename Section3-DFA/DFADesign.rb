require './DFA.rb'

class DFADesign < Struct.new(:start_state, :accept_states, :rule_book)
  def to_dfa
    DFA.new(start_state, accept_states, rule_book)
  end

  def accepts?(string)
    to_dfa.tap { |dfa| dfa.read_string(string) }.accepting?
  end
end