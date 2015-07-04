# -*- coding: utf-8 -*-

class Recipe
  def initialize(filename)
    @file = File.open(ARGV[0])   
    @recipes = []
  end
  
  def print
    @recipes.each do |recipe| 
      puts "#{recipe[:id]}: #{recipe[:name]} #{recipe[:recipe]}"
    end
  end

  def read
    @file.each_line.with_index(1) do |row, id|
      recipe = row.split(" ")
      @recipes.push({:id => id, :name => recipe[0], :recipe => recipe[1]})
    end
  end
end

filename = ARGV[0]
recipe = Recipe.new(filename)
recipe.read
recipe.print
