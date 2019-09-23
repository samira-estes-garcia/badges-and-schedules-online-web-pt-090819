def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  #new_array = []
  #array.each do |element|
    #new_array.push("Hello, my name is " + element + ".")
  #end
  #new_array
  array.collect do |element|
    #"Hello, my name is " + element + "."
    badge_maker(element)
  end
end

def assign_rooms(speakers)
  #new_array = []
  #room = 1
  #speakers.each do |speaker|
    #new_array.push("Hello, #{speaker}! You'll be assigned to room #{room}!")
    #room +=1
  #end
  #new_array
  speakers.collect.with_index(1) do |speaker, index|
    "Hello, #{speaker}! You'll be assigned to room #{index}!"
  end
end

def printer(attendees)
  batch_badge_creator(attendees).each {|badge| puts badge}
  assign_rooms(attendees).each {|rooms| puts rooms}
end
