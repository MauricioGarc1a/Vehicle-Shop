class Plane < Vehicle
attr_accessor :size
  def describe
puts "\n>Plane #{@name}, model/size #{@year}#{@size} can fly in an approximate speed of: #{@speed}.
Color #{@color}, has a cost of #{@price}, moves in the #{@move}."
  end

end
