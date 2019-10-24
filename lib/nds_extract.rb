require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(directors)
  director_grosses = {}
  director_index = 0
  while director_index < directors.length do
    # current_director = directors[director_index]
    # # total_money = gross_for_director[current_director]
    # director_grosses[current_director[:name]] = 0
    # director_grosses[current_director[:name]] += total_money
    # director_index += 1
    director_grosses[directors[director_index][:name]] = gross_for_director(directors[director_index])
    director_index += 1
  end
  director_grosses
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  #dir_name = director_data[:name]
  movie_list = director_data[:movies]
  dir_gross = 0
  movie_index = 0
  while movie_index < movie_list.length do
      dir_gross += movie_list[movie_index][:worldwide_gross]
      movie_index += 1
  end
  dir_gross
end


# def directors_totals(directors)
#   director_index = 0
#   director_grosses = {}
#   while director_index < directors.length do
#     director_grosses[directors[director_index][:name]]= 0
#     movie_index = 0
#     while movie_index < directors[director_index][:movies].length do
#       director_grosses[directors[director_index][:name]] += directors[director_index][:movies][movie_index][:worldwide_gross]
#       movie_index += 1
#     end
#     director_index += 1
#   end
#   director_grosses
# end
