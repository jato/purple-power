class Pizza
  
  @@list = ['pepperoni', 'cheese', 'sausage']
  
  def self.all
    return @@list
  end

  def self.create(pizza_name)
    @@list << pizza_name
  end

  def self.exists?(pizza_name)
    @@list.include?(pizza_name)
  end

end