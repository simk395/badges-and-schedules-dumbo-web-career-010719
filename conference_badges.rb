# Write your code here.# Write your code here.

def badge_maker(attendees)
  return "Hello, my name is #{attendees}."
end

def batch_badge_creator(attendees)
  i, j = 0, []
  attendees.each do |person|
      j << badge_maker(person)
      i += 1
  end
  j
end

def assign_rooms(attendees)
  i, j = 0, []
  attendees.each do |person|
    j << "Hello, #{person}! You'll be assigned to room #{i+1}!"
    i+=1
  end
  j
end

def printer(attendees)
  i=0
  j = batch_badge_creator(attendees)
  k = assign_rooms(attendees)
  while i < attendees.size
    puts j[i]
    puts k[i]
    i+=1
  end
end
