require 'colorize'
class Car < Vehicle
 attr_accessor :wheels
  def describe
puts "\n* #{@name}, model #{@year}, only for: #{@move}, reach a speed of #{@speed}.
In a recomended #{@color}, with Wheels size #{@wheels}, has a price of: #{@price}"
  end
end
