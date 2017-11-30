require './Pattern.rb'

class Repeat < Struct.new(:pattern)
  include Pattern

  def to_s
    pattern.bracket(precendence) + '*'
  end

  def precendence
    2
  end
end