# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here
lifter1 = Lifter.new("Aj", 250)
lifter2 = Lifter.new("Akon", 200)
lifter3 = Lifter.new("Angelo", 350)
lifter4 = Lifter.new("Raul", 290)

gym1 = Gym.new("Golds Gym")
gym2 = Gym.new("Planet Fitness")
gym3 = Gym.new("Retro Fitness")
gym4 = Gym.new("24hr Fitness")

member1 = Membership.new(22, gym1, lifter1)
member2 = Membership.new(30, gym2, lifter2)
member3 = Membership.new(10, gym3, lifter3)
member4 = Membership.new(15, gym4, lifter4)
member5 = Membership.new(40, gym2, lifter1)
member6 = Membership.new(25, gym1, lifter3)
member7 = Membership.new(32, gym4, lifter2)
member8 = Membership.new(21, gym3, lifter4)
binding.pry

puts "Gains!"
