class DoNothing
  def to_s
    'do-nothing'
  end

  def inspect
    "<<#{self}>>"
  end

  def ==(othor_statement)
    othor_statement.instance_of?(DoNothing)
  end

  def reducible?
    false
  end
end