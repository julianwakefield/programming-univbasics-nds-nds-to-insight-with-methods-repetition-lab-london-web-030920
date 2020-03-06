$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
require 'pp'

def directors_totals(source)
  result = {}
    director_index = 0
   while director_index < source.size do
      director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
   end
  result
end

def gross_for_director(d)
   total = 0
   index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
     index += 1
   end

  total
 end

 def list_of_directors(source)
#   #Write this implementation
  counter = 0
  list_of_directors = []


  while counter < source.length do
   director_names = source[counter][:name]
    list_of_directors << director_names

    counter += 1
  end
 list_of_directors
 #pp source

end
#
def total_gross(source)
    result = {}
    counter = 0
    while counter < source.length do
      gross = source[:name][counter][:worldwide_gross]
      result += gross

      counter += 1

    end
result
end

# Write this implementation
#
# Should use methods:
# 1. directors_totals: returns a Hash of { dir_name => gross }
# 2. list_of_directors: names provides an Array of directors names (use
#
# Visit each key (i.e. director name), look up the value in the hash
# returned by directors_totals, and add it to a running total. When done,
# return the total

# pp source
