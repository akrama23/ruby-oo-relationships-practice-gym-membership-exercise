class Lifter
  attr_reader :name, :lift_total

    @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total

    self.class.all << self 
  end

  def self.all 
    @@all
  end

  def memberships
    Membership.all.select {|member| member.lifter == self}
  end 

  def gyms
    memberships.map {|member| member.gym}
  end 

  def average_lift 
  the_sum = Lifter.all.map {|lifter| lifter.lift_total}.sum
  #first get the sum of all the lifters total_lift with .sum
  #then divide by the number of lifters with .count
  the_count = Lifter.all.map {|lifter| lifter.lift_total}.count
  the_sum / the_count
  end 

  def total_cost
    memberships.map{|member| member.cost}.sum
  end 

  def create(gym, cost)
    Membership.new(cost, gym, self)
  end 

end
