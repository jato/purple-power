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

  def self.destroy(pizza_name)
    @@list.delete(pizza_name)
  end

  def self.update(old_name, new_name)
    idx = @@list.index(old_name)
    @@list[idx] = new_name
  end

end








