require './donothing.rb'

class Sequence < Struct.new(:frist, :second)
  def to_s
    "#{frist}; #{second}"
  end

  def inspect
    "<<#{self}>>"
  end

  def to_ruby
    "-> e { (#{second.to_ruby}).call(#{first.to_ruby}).call(e)) }"
  end
end