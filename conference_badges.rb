def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(array)
  new_array = []
  array.each do |element|
    new_array.push("Hello, my name is " + element + ".")
  end
  new_array
end

def assign_rooms(speakers)
  new_array = []
  room = 1
  speakers.each do |speaker|
    new_array.push("Hello, #{speaker}! You'll be assigned to room #{room}!")
    room +=1
  end
  new_array
end

def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end
  assign_rooms(attendees).each do |rooms|
    puts rooms
  end
end
