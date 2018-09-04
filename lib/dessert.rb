class Dessert
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def name
    @name
  end
  def name=(newName)
    @name = newName
  end
  def calories
    @calories
  end
  def calories=(newCalories)
    @calories = newCalories
  end
  def healthy?
    @calories < 200
  end
  def delicious?
    true
  end
end

class JellyBean < Dessert
  def initialize(flavor)
    @flavor = flavor
    @name = "#{@flavor} jelly bean"
    @calories = 5
  end
  def flavor
    @flavor
  end
  def flavor=(newflavor)
    @flavor = newflavor
  end
  def delicious?
    return true unless @flavor.downcase == "licorice"
  end
end
