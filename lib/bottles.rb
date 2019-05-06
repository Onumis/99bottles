class Bottles
  def verse(number)
    previous = number
    current = previous -1
    sing(previous, current)
  end

  def verses(from_number, to_number)
    (to_number..from_number).map { |number| verse(number) }
                            .reverse.join("\n")
  end

  private

  def sing(previous, current)
    line1(previous) + "\n" + line2(current) + "\n"
  end

  def line1(num)
    if num == 0
      "No more bottles of beer on the wall, no more bottles of beer."
    else
      "#{pluralise('bottle', num)} of beer on the wall, "\
        "#{pluralise('bottle', num)} of beer."
    end
  end

  def line2(num)
    if num == 0
      "Take it down and pass it around, "\
        "no more bottles of beer on the wall."
    elsif num < 0
      "Go to the store and buy some more, 99 bottles of beer on the wall."
    else
      "Take one down and pass it around, "\
        "#{pluralise('bottle', num)} of beer on the wall."
    end
  end

  def pluralise(string, count)
    if count == 1
      "#{count} #{string}"
    else
      "#{count} #{string}s"
    end
  end
end
