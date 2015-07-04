# -*- coding: utf-8 -*-
require 'yaml'

def print
  word = YAML.load_file('target.yml')
  puts word['target']['name']
end

print
