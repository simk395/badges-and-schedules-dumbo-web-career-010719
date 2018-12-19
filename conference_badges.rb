# Write your code here.# Write your code here.

def badge_maker(attendees)
  return "Hello, my name is #{attendees}."
end

def batch_badge_creator(attendees)
  counter = attendees.count - 1;
    for i in 0..counter
      attendees[i] = badge_maker(attendees[i])
    end
  return attendees
end

def assign_rooms(attendees)
  counter = attendees.count - 1
  for i in 0..counter
    attendees[i] = "Hello, #{attendees[i]}! You'll be assigned to room #{i+1}!"
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
