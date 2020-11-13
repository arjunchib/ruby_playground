# A calculator for finding how much fuel is required to 
# launch a module of mass (given as argument). 
# The computuation is mass / 3, rounded down, minus 2. 
#
# Any mass requiring 0 or less fuel means we're done. 
#
# Note that the mass of the fuel must also be included. 
# A module of 1969 requires 654, 654 requires 216, 216 requires 70
#
# So FuelComputer.new(1969).fuel should return 654 + 216 + 70 + 21 + 5 = **966**
#
class FuelComputer
  def initialize(mass)
    @current_mass = mass
  end

  def fuel
    total = 0
    loop do      
      new_requirement = [(@current_mass / 3.0).floor - 2, 0].max
      total += new_requirement
      @current_mass = new_requirement
      break if new_requirement <= 0
    end
    total
  end
end

