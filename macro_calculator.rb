class Food
  attr_accessor :name
  attr_accessor :servings
  attr_accessor :grams_per_serving
  attr_accessor :calories
  attr_accessor :proteins
  attr_accessor :carbs
  attr_accessor :fats
  attr_accessor :fibers

  #initializing a food class using nutritional facts and name.
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

  #receives user input for the name and capitalizes.
  def name=(value)
    unless value.is_a?(String)
      raise TypeError, 'Name must be a string'
    end
    @name = value.capitalize
  end

    #receives user input for the total number of servings and verifies it as number.
  def servings=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Servings must be an integer'
    end
    @servings = value
  end

#receives user input for the grams per serving and verifies it as number
  def grams_per_serving=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Grams per serving must be an integer'
    end
    @grams_per_serving = value
  end

#receives user input for the calories per serving and verifies it as number
  def calories=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Calories must be an integer'
    end
    @calories = value
  end

#receives user input for the proteins per serving and verifies it as number
  def proteins=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Protein must be an integer'
    end
    @proteins = value
  end

#receives user input for the carbs per serving and verifies it as number
  def carbs=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Carbs must be an integer'
    end
    @carbs = value
  end

#receives user input for the fats per serving and verifies it as number
  def fats=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Fats must be an integer'
    end
    @fats = value
  end

  #receives user input for the fibers per serving and verifies it as number
  def fibers=(value)
    unless value.is_a?(Integer)
      raise TypeError, 'Fiber must be an integer'
    end
    @fibers = value
  end

  #Multiplies single serving data by the number of servings
  def serving_multiplier(a,b)
    return a * b
  end

  #summery for the total calories and macros for the meal
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

  #summery for the single serving of calories and macros for the meal
  def single_macros
    pp "--------------------------------"
    pp "MACROS FOR A SINGLE SERVING OF #{self.name.upcase}!"
    pp "One serving is #{self.grams_per_serving} grams."
    pp "Calories per serving: #{self.calories}."
    pp "Proteins per serving: #{self.proteins} grams."
    pp "Carbs per serving: #{self.carbs} grams."
    pp "Fats per serving: #{self.fats} grams"
    pp "Fiber per serving: #{self.fibers} grams."
    pp "--------------------------------"
  end
  

end

#console output and user input to intake information amout the meal
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

  #create meal from the food class initializer
  meal = Food.new(user_title, user_servings, user_grams_per_serving, user_calories, user_proteins, user_carbs, user_fats, user_fibers)
  #run the total macros/calories summery method
meal.total_macros
  #run the single serving macros/calories summery method
meal.single_macros
