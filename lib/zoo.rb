require 'pry'
require_relative 'cage'

class Zoo
  attr_reader :cages, :employees

  def initialize(name, season_opening_date, season_closing_date)
    @name = name
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @cages = []
    @employees = []
    cage_maker
  end

  def cage_maker
    10.times do
      @cages << Cage.new
    end
  end

  def add_employee(employee)
    @employees << employee
  end

  def open?(date)
    @season_opening_date <= date && date <= @season_closing_date
  end

  def add_animal(new_animal)
    @cages.each do |each_cage|
      if each_cage.empty?
        each_cage.animal = new_animal
        return
      end
    end
    "Your zoo is already at capacity!"
  end

  def visit
    return_string=""
    @employees.each do |employee|
      return_string += "#{employee.name} waved hello!\n"
    end

    @cages.each do |cage|
      if !cage.empty?
        animal = cage.animal
        return_string += "#{animal.speak}\n"
      end
    end

    return_string
  end
end
