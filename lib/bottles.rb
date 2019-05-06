class Bottles
  def verse(number)
    previous = number
    current = previous -1
    sing(previous, current)
  end

  private

  def sing(previous, current)
    line1(previous) + "\n" + line2(current) + "\n"
  end

  def line1(num)
    "#{pluralise('bottle', num)} of beer on the wall, "\
      "#{pluralise('bottle', num)} of beer."
  end

  def line2(num)
    "Take one down and pass it around, "\
      "#{pluralise('bottle', num)} of beer on the wall."
  end

  def pluralise(string, count)
    if count == 1
      "#{count} #{string}"
    else
      "#{count} #{string}s"
    end
  end
end
