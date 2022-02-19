class Dessert

  attr_accessor :name
  attr_accessor :calories

  def initialize(name, calories)
    #sets then enter name and calories to those varibles
    @name=name
    @calories=calories
  end
  def healthy?
    #returns true if the calories are less then 200
    true if @calories <200
  end
  def delicious?
    #returns true
    true
  end

end

class JellyBean < Dessert
  
  attr_accessor :flavor
  
  def initialize(flavor)
    #allows user to set the flavor
    #calories is set to 5 by default
    #set the name to be te flavor follow by "jelly bean"
    @flavor=flavor
    @calories=5
    @name=@flavor+' jelly bean'
  end
  def delicious?
    #returns false if the favor is licorice
    return false if @flavor.eql? 'licorice'
    super
  end
end
