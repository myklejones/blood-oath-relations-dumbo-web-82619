
class Cult
    attr_reader :name, :location, :founding_year, :slogan 
    attr_writer
    attr_accessor
    @@all = []
    
    2
    
    def initialize(name,location,founding_year,slogan)
        @name = name 
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    
        
    end 
    
    def self.all
        @@all
    end
    
    
    def recruit_followers(follower)
        Bloodoath.new(self,follower)
    end
    
    def cult_pop
       cult_pop = Bloodoath.all.select{|c, f| c.cult == self}
       
    end 
    
    def cult_population
       cult_pop.size
    end
    
    
    def self.find_by_name(name)
      Cult.all.select{|oath|oath.name == name}
    end
    
    def self.find_by_location(location)
        Cult.all.select { |cult| cult.location == location}
    end
    
    def self.find_by_founding_year(year)
        Cult.all.select { |cult| cult.founding_year == year}
    end
    
     def age
      cult_pop.map {|follower| follower.followers.age}
    
     end
         
     def average_age
    nums = 0.0
        age.collect do |age|
       nums += age
    
       end
    average = nums /age.size
     end
        
       
    
    def my_followers_mottos
    cult_pop.map {|follower| follower.followers.life_motto}
    end
    
    def self.least_popular
       least_popular_cult = Cult.all.first
    
       Cult.all.each do |cult|
          if cult.cult_population < least_popular_cult.cult_population
             least_popular_cult = cult
          end
       end
       least_popular_cult
    end
    
    
    def self.most_common_location
       most_common = Cult.all.first
       Cult.all.each do |cult|
       if cult.cult_population >most_common.cult_population
          most_common = cult
       end
    
       end
       most_common.name 
    end
    
    
    
    
    
    
       
    end
    
    