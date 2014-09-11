class OrangeTree
  attr_reader :height,:years,:fruits
  # TODO: Implement all the specs defined in the README.md :)
  def initialize
    @height = 0
    @years = 0
    @fruits = 0
    @dead_date = rand(50)
  end

  def one_year_passes!
    @years += 1

    if @years <= 10
      @height += 1
    end

    # Fruit Production
    if @years > 5 && @years <= 10
      @fruits = 100
    elsif @years > 10 && @years <= 15
      @fruits = 200
    else
      @fruits = 0
    end
  end

  def pick_a_fruit!
    @fruits -= 1 unless @fruits == 0
  end
  def dead?
    dead = false
    if @years > 50 + @dead_date
      dead = true
    end

    dead
  end
end


# You should be able to measure the tree
# Each year, the tree should age (it becomes older and taller, and eventually dies).
# A tree grows 1 meter per year until 10 years old. Then it stops.
# Before 50 years old, the proabability of dying as a year pass is zero.
# After 50 years old, the probability of dying increases
# No tree can live more than 100 years
# A tree will produce 100 fruits a year once it is 5 years old
# A tree will produce 200 fruits a year between 10 and 15 years old
# A tree will not produce any fruits after that
# You should be able to pick an fruit from the tree
# You should be able to count how many fruits on the tree there are left
# Every year, fruits which were not picked just fall off