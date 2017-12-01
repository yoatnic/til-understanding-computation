require './Pattern.rb'
require './NFARulebook.rb'
require './NFADesign.rb'

class Empty
  include Pattern

  def to_s
    ''
  end

  def precendence
    3
  end

  def to_nfa_design
    start_state = Object.new
    accept_states = [start_state]
    rulebook = NFARulebook.new([])

    NFADesign.new(start_state, accept_states, rulebook)
  end
end