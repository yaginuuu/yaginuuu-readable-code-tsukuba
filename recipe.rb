# -*- coding: utf-8 -*-

class Recipe
  def initialize(filename)
    @file = File.open(ARGV[0])   
    @recipes = []
  end
  
  def print_recipes_all
    @recipes.each do |recipe| 
      puts "#{recipe[:id]}: #{recipe[:name]} #{recipe[:recipe]}"
    end
  end

  def print_recipes_by_id(search_id)
    @recipes.each do |recipe|
      if search_id == id  
        puts "#{recipe[:id]}: #{recipe[:name]} #{recipe[:recipe]}"
      end
    end
  end

  def read
    @file.each_line.with_index(1) do |row, id|
      recipe = row.split(" ")
      @recipes.push({:id => id.to_i, :name => recipe[0], :recipe => recipe[1]})
    end
  end
end

filename = ARGV[0]
search_id = ARGV[1]

recipe = Recipe.new(filename)
recipe.read

if search_id.nil?
  recipe.print_recipes_all
else 
  recipe.print_recipes_by_id(search_id)
end
