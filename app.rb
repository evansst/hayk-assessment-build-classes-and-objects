require 'pry'

class Building
  attr_accessor :name, :tenants
  attr_reader :address
  @@all = []

  def initialize(name, address, floors, tenants)
    @address = address
    @floors = floors
    @tenants = tenants
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def placard
    "#{@name} at #{@adress}"
  end

  def tenants_per_floor
    @tenants / @floors
  end

  def self.max_tenants
    all.max_by(&:tenants)
  end
end

building1 = Building.new('name1', 'address1', 10, 1000)
building2 = Building.new('name2', 'address2', 20, 10_000)
building3 = Building.new('name3', 'address3', 30, 100_000)


binding.pry
