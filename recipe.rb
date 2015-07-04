# -*- coding: utf-8 -*-

class Recipe

  # 保存
  def self.save
    recipes = %w(オムライス 親子丼 杏仁豆腐)
    open(ARGV[0], 'w') do |file|
      recipes.each do |recipe|
        file.puts recipe
      end
    end
  end

  # 出力
  def self.print
    results = []
    hash = {}
    open(ARGV[0]) do |recipes|
      recipes.each_with_index do |recipe, i|
        hash[:id] = i + 1
        hash[:recipe] = recipe
        results[i] = hash
        puts "#{hash[:id]}: #{hash[:recipe]}"
      end
    end
  end
end

Recipe.save
Recipe.print
