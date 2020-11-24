class Gym
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    self.class.all << self 
  end

  def self.all 
    @@all 
  end 

  def all_members
    Membership.all.select {|member| member.gym == self}
  end 

  def lifters
    all_members.map{|member| member.lifter}
  end 

  def lifters_name
    lifters.collect{|lifter| lifter.name}
  end 

  def lift_total
    lifters.map {|lift| lift.lift_total}.sum
  end 

end
