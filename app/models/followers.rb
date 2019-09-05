
class Followers 
    attr_reader :name, :age, :life_motto, :cult
    attr_writer
    attr_accessor
    @@all = []
    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto =life_motto
        @cult = cult
        @@all << self
    end 
    
    def self.all
        @@all
    end 
    
    def cults
        Bloodoath.all.select do |key|
            key.followers == self
        end
    
    end
    
    def join_cult(cult)
        Bloodoath.new(cult,self)
    end
    
    def self.of_certain_age(num)
        Followers.all.select {|key| key.age >= num }
     
    end 
    
    def my_cults_slogans
        cults.map { |name| name.cult.slogan}
    
    end
    
    def cult_size
        cults.size 
    end
    
    def self.most_active
        active = Followers.all.first
        Followers.all.each do |follower|
            if follower.cult_size > active.cult_size
                active = follower
            end       
        end
    active
    end
    
    
    
    
    def self.top_ten
    
       top_ten_active = Followers.all.first 
        Followers.all.each do |follower|
            if follower.cult_size > top_ten.cult_size
                top_ten = follower
            end       
       end
    end
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    end