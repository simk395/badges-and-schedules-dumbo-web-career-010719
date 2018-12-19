# Write your code here.# Write your code here.

def badge_maker(attendees)
  return "Hello, my name is #{attendees}."
end

def batch_badge_creator(attendees)
  i = 0
  attendees.each do |person|
      attendees[i] = badge_maker(person)
      i += 1
  end
  attendees
end

def assign_rooms(attendees)
  i=0
  attendees.each do |person|
    attendees[i] = "Hello, #{attendees[i]}! You'll be assigned to room #{i+1}!"
    i+=1
  end
  return attendees
end

def printer(attendees)
  counter = attendees.count - 1
  people = attendees
  badge = batch_badge_creator(attendees)
  assign = assign_rooms(people)
  for i in 0 .. counter
    puts badge[i]
    puts assign[i]
  end
end
