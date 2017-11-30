require './Pattern.rb'

class Concatenate < Struct.new(:first, :second)
  include Pattern

  def to_s
    [first, second].map { |pattern| pattern.bracket(precendence) }.join
  end

  def precendence
    1
  end
end