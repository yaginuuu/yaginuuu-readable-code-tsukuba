# -*- coding: utf-8 -*-

class Recipe
  #def initialize

  #end

  def self.print
    File.foreach('./recipe.txt') do |recipe|
      puts recipe
    end
  end

  def self.save
    recipes = %w(オムライス 親子丼 杏仁豆腐)
    open('./recipe.txt', 'w') do |file|
      recipes.each do |recipe|
        file.puts recipe
      end
    end
  end
end

Recipe.save
Recipe.print
