class Grid

  def initialize(array)
    @array = array
  end

  def tick
    coordinate_array(@array)
  end

  def coordinate_array(array)
    co_array = []
    count = 1
    array.each {|row|
      co_array << [count]
      count += 1
    }
      co_array.collect {|y|
        count = 1
      x_array = []
        array.first.length.times do
          x_array.push([count,y])
          count += 1
        end
        x_array
      }
  end

  def check_coordinates (array, co_array)
    count = 0

    array.each_with_index { |row, index|
    @y_index = index
      row.each_with_index { |cell, index|
      @x_index = index
    count += 1 if array[@y_index -1][@x_index] == 1
      }
    }
  end
end




  # Get coordinates
  # Check each coordinate for surrounding values
  # get number of living cells
  # if else applying rules
  #