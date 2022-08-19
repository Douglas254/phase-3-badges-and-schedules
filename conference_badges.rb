# Write your code here.
# returns a formatted badge
def badge_maker(name)
  "Hello, my name is #{name}."
end

# returns a list of badge messages
# does not hard-code response
def batch_badge_creator(attendees)
  attendees.map do |attendee|
    "Hello, my name is #{attendee}."
  end
end

# returns a list of welcome messages and room assignments
# does not hard-code the response
def assign_rooms(attendees)
  attendees.map.with_index(1) do |attendee, room_num|
    "Hello, #{attendee}! You'll be assigned to room #{room_num}!"
  end
end

# outputs the list of badges and room_assignments
def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end
  assign_rooms(attendees).each do |assignment|
    puts assignment
  end
end