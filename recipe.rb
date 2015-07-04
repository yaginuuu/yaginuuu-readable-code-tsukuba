# -*- coding: utf-8 -*-

class Recipe
  # 出力
  def self.print
    hash = {}
    open(ARGV[0]) do |recipes|
      recipes.each_with_index do |recipe, i|
        hash[:id] = i + 1
        hash[:recipe] = recipe
        puts "#{hash[:id]}: #{hash[:recipe]}"
      end
    end
  end
end

Recipe.print
