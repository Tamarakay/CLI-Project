class Food
  attr_accessor :name
  attr_accessor :servings
  attr_accessor :grams_per_serving
  attr_accessor :calories
  attr_accessor :proteins
  attr_accessor :carbs
  attr_accessor :fats
  attr_accessor :fibers

  def initialize(name, servings, grams_per_serving, calories, proteins, carbs, fats, fibers)
    self.name = name
    self.servings = servings
    self.grams_per_serving = grams_per_serving
    self.calories = calories
    self.proteins = proteins
    self.carbs = carbs
    self.fats = fats
    self.fibers = fibers
  end

  def name=(value)
    unless value.is_a?(String)
      raise TypeError, 'Name must be a string'
    end
    @name = value.capitalize
  end

  def servings=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Servings must be an integer'
    end
    @servings = value
  end

  def grams_per_serving=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Grams per serving must be an integer'
    end
    @grams_per_serving = value
  end

  def calories=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Calories must be an integer'
    end
    @calories = value
  end

  def proteins=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Protein must be an integer'
    end
    @proteins = value
  end

  def carbs=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Carbs must be an integer'
    end
    @carbs = value
  end

  def fats=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Fats must be an integer'
    end
    @fats = value
  end

  def fibers=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Fiber must be an integer'
    end
    @fibers = value
  end

  def serving_multiplier(a,b)
    return a * b
  end

  def total_macros
    pp "--------------------------------"
    pp "#{self.name.upcase} HAS #{self.servings} SERVINGS!"
    pp "Total servings are: #{serving_multiplier(self.grams_per_serving, self.servings)} grams."
    pp "Total calories are: #{serving_multiplier(self.calories, self.servings)}."
    pp "Total proteins are: #{serving_multiplier(self.proteins, self.servings)} grams."
    pp "Total carbs are: #{serving_multiplier(self.carbs, self.servings)} grams."
    pp "Total fats are: #{serving_multiplier(self.fats, self.servings)} grams"
    pp "Total fibers are: #{serving_multiplier(self.fibers, self.servings)} grams."
    pp "--------------------------------"
  end

  def single_macros
    pp "--------------------------------"
    pp "SINGLE SERVING OF #{self.name.upcase}!"
    pp "One serving is #{self.grams_per_serving} grams."
    pp "Calories per serving: #{self.calories}."
    pp "Proteins per serving: #{self.proteins} grams."
    pp "Carbs per serving: #{self.carbs} grams."
    pp "Fats per serving: #{self.fats} grams"
    pp "Fiber per serving: #{self.fibers} grams."
    pp "--------------------------------"
  end
  

end


pp "Enter the title of your meal"
 user_title = gets.chomp

 pp "Enter how many servings does your meal have?"
 user_servings = gets.chomp.to_i

  pp "Enter grams per serving"
  user_grams_per_serving = gets.chomp.to_i

  pp "Enter calories per serving"
  user_calories = gets.chomp.to_i

  pp "Enter protein per serving"
  user_proteins = gets.chomp.to_i

  pp "Enter carbs per serving"
  user_carbs = gets.chomp.to_i

  pp "Enter gats per serving"
  user_fats = gets.chomp.to_i

  pp "Enter fiber per serving"
  user_fibers = gets.chomp.to_i

  meal = Food.new(user_title, user_servings, user_grams_per_serving, user_calories, user_proteins, user_carbs, user_fats, user_fibers)
meal.total_macros
meal.single_macros
