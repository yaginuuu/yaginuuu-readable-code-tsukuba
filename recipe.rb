# -*- coding: utf-8 -*-
require 'csv'

class Recipe
  # 出力
  def self.print
    hash = {}
    filename = ARGV[0]
    recipes = CSV.read(filename)
    recipes.each_with_index do |recipe, i|
        hash[:id] = i + 1
        hash[:name] = recipe[0]
        hash[:recipe] = recipe[1]
        puts "#{hash[:id]}: #{hash[:name]} #{hash[:recipe]}"
    end
  end
end

Recipe.print
