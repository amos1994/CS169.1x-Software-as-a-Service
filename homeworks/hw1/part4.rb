class Dessert
  def initialize(name, calories)
	@name = name
	@calories = calories
  end

  def healthy?
 	return false unless @calories < 200
	return true
  end
  
  def delicious?
	return true
  end
	
	attr_accessor :name
	attr_accessor :calories

end

class JellyBean < Dessert
  def initialize(name, calories, flavor)
	@flavor = flavor
  end
  
  def delicious?
	return true unless flavor == "black licorice"
	return false
  end
	attr_accessor :flavor
end

