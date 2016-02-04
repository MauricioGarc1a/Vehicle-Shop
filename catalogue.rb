require './vehicle' #require other programs
require './car'
require './plane'
require 'colorize'
#catalogue
camaro = Car.new
camaro.name = "Camaro"#.colorize(light_red)
camaro.color = "Yellow"
camaro.speed = "130km per hour"
camaro.move = "Street"
camaro.year = 1974
camaro.price = 6000.0
camaro.wheels = "Medium"

challenger = Car.new
challenger.name = "Challenger"
challenger.color = "Black"
challenger.speed = "160km per hour"
challenger.move = "Street"
challenger.year = 1979
challenger.price = 8000.0
challenger.wheels = "Extra Large"

mustang = Car.new
mustang.name = "Mustang"
mustang.color = "Red"
mustang.speed = "170km per hour"
mustang.move = "Street"
mustang.year = 1988
mustang.price = 7200.0
mustang.wheels = "Large"

blackjet = Plane.new
blackjet.name = "BlackJet"
blackjet.color = "White"
blackjet.speed = "600km per hour"
blackjet.move = "Sky"
blackjet.year = 2015
blackjet.price = 30_000.0
blackjet.size = "Small"


jumbojet = Plane.new
jumbojet.name = "Jumbojet"
jumbojet.color = "Blue"
jumbojet.speed = "800km per hour"
jumbojet.move = "Sky"
jumbojet.year = 2017
jumbojet.price = 100_000.0
blackjet.size = "Big"


vehicles_cars = [ camaro, challenger, mustang ]
vehicles_planes = [ blackjet, jumbojet ]

#while loop that throws you to the beginnig need to break it
index = 2
while true do

puts "\nPRIVATE SHOP"
puts "\nProducts:
A) CARS
B) PLANES
C) ALL
Select catalogue: [A-C]:"
option = gets.chomp.upcase

if option == "A" #CARS

vehicles_cars.each do |vehicles_car|
  vehicles_car.describe
end

puts "\nSelect:
1) CAMARO
2) CHALLENGER
3) MUSTANG
Select item: [1-3]:"
car_option = gets.chomp.upcase

if car_option == "1"
  camaro.describe

elsif car_option == "2"
  challenger.describe

elsif car_option == "3"
     mustang.describe

       else
       vehicles_cars.each do |vehicles_car|
       vehicles_car.describe
       end
end


elsif option == "B" #PLANES

vehicles_planes.each do |vehicles_plane|
  vehicles_plane.describe
end

puts "\nSelect:
1) BLACKJET
2) JUMBOJET
Select item: [1 2]:"
plane_option = gets.chomp.upcase

if plane_option == "1"
  blackjet.describe

elsif plane_option == "2"
  jumbojet.describe

       else
       vehicles_planes.each do |vehicles_plane|
       vehicles_plane.describe
       end
end

elsif option == "C" #ALL

  vehicles_cars.each do |vehicles_car|
    vehicles_car.describe
  end

  vehicles_planes.each do |vehicles_plane|
    vehicles_plane.describe
  end

else
  puts "VEHICLE NOT AVAILABLE!"

end

break if false
#While loop end
end
