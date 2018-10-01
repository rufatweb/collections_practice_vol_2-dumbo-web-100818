require "pry"

# your code goes here
def begins_with_r(array)
  array.all? do |tool|
  tool.start_with?("r")
end
end

def contain_a(array)
  array.find_all do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
     word.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.delete_if do |item|
    !(item.is_a? String)
  end
end

def count_elements(array)
  new_array = []
  array.each  do |element|
    new_array << {:name => element[:name], :count => array.count(element)}
  end
  new_array.uniq
end

 def merge_data(arr1, arr2)
   new_array = []
   arr1.each do |hash|
    name = hash[:first_name]
     arr2.each do |person|
       if person[name]
         merged = person[name]
         merged[:first_name] = name

         new_array << merged
       end
     end
end
new_array
end

def find_cool(array)
   new_array = []
  array.each do |hash|
    if hash.has_value?("cool")
    new_array << hash
  end
  end
  new_array
end
#      {
#        "Hack Reactor" => {:location=>"SF"},
#         "dev boot camp chicago" => {:location=>"Chicago"},
#         "dev boot camp" => {:location=>"SF"},
#         "flatiron school bk" => {:location=>"NYC"},
#         "flatiron school" => {:location=>"NYC"},
#         "general assembly" => {:location=>"NYC"}
#      }

#       "Chicago" => ["dev boot camp chicago"],
#       "NYC" => ["flatiron school bk", "flatiron school", "general assembly"],
#       "SF" => ["dev boot camp", "Hack Reactor"],


def organize_schools(hash)
  orgonized_schools = {}
  hash.each do |school, info|
  if orgonized_schools[info[:location]]
    orgonized_schools[info[:location]] << school
  else
    orgonized_schools[info[:location]] = []
    orgonized_schools[info[:location]] << school
end
end
orgonized_schools
end
