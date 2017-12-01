require './Pattern.rb'
require './FARule.rb'
require './NFARulebook.rb'
require './NFADesign.rb'

class Literal < Struct.new(:character)
  include Pattern

  def to_s
    character
  end

  def precendence
    3
  end

  def to_nfa_design
    start_state = Object.new
    accept_states = Object.new
    rule = FARule.new(start_state, character, accept_states)
    rulebook = NFARulebook.new([rule])

    NFADesign.new(start_state, [accept_states], rulebook)
  end
end