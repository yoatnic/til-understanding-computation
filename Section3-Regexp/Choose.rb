require './Pattern.rb'

class Choose < Struct.new(:first, :second)
  include Pattern

  def to_s
    [first, second].map { |pattern| pattern.bracket(precendence) }.join('|')
  end

  def precendence
    0
  end
end