# Module for creating a facing of the correct direction
module Facing
  def self.new_of_correct_type(facing)
    case facing
    when :north then NorthFacing.new
    when :south then SouthFacing.new
    when :east  then EastFacing.new
    when :west  then WestFacing.new
    else fail "Invalid facing #{facing.inspect}"
    end
  end
end

# Facing north
class NorthFacing
  def facing
    :north
  end

  def x_change
    0
  end

  def y_change
    +1
  end

  def rotate_left
    WestFacing.new
  end

  def rotate_right
    EastFacing.new
  end
end

# Facing south
class SouthFacing
  def facing
    :south
  end

  def x_change
    0
  end

  def y_change
    -1
  end

  def rotate_left
    EastFacing.new
  end

  def rotate_right
    WestFacing.new
  end
end

# Facing east
class EastFacing
  def facing
    :east
  end

  def x_change
    +1
  end

  def y_change
    0
  end

  def rotate_left
    NorthFacing.new
  end

  def rotate_right
    SouthFacing.new
  end
end

# Facing west
class WestFacing
  def facing
    :west
  end

  def x_change
    -1
  end

  def y_change
    0
  end

  def rotate_left
    SouthFacing.new
  end

  def rotate_right
    NorthFacing.new
  end
end
