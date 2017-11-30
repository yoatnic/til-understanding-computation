module Pattern
  def bracket(outer_precendence)
    if precendence < outer_precendence
      '(' + to_s + ')'
    else
      to_s
    end
  end

  def inspect
    "/#{self}/"
  end
end