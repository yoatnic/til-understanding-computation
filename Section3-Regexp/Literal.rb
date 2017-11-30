require './Pattern.rb'

class Literal < Struct.new(:character)
  include Pattern

  def to_s
    character
  end

  def precendence
    3
  end
end