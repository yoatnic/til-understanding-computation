require './Pattern.rb'

class Empty
  include Pattern

  def to_s
    ''
  end

  def precendence
    3
  end
end