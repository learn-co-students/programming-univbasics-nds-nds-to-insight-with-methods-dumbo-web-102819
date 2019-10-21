require 'directors_database'
require 'pry'
# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  nds.each do |element|
    gross = 0
    element[:movies].each do |movie_hash|
      gross += movie_hash[:worldwide_gross]
      result[element[:name]] = gross
    end
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  gross = 0
  director_data[:movies].each do |movie_hash|
    gross += movie_hash[:worldwide_gross]
  end
  return gross
end
