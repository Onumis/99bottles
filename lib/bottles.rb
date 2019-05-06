class Bottles
  def verse(number)
    previous = number
    current = previous -1
    sing(previous, current)
  end

  private

  def sing(previous, current)
    <<-VERSE
#{previous} bottles of beer on the wall, #{previous} bottles of beer.
Take one down and pass it around, #{current} bottles of beer on the wall.
    VERSE
  end
end
