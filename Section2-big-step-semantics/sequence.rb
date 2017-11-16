require './donothing.rb'

class Sequence < Struct.new(:frist, :second)
  def to_s
    "#{frist}; #{second}"
  end

  def inspect
    "<<#{self}>>"
  end

  def evaluate(environment)
    second.evaluate(first.evaluate(environment))
  end
end