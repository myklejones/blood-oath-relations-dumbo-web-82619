class Bloodoath
    attr_reader :cult, :followers
    attr_writer
    attr_accessor
    @@all = []
    
    
    def initialize(cult,followers)
        @cult = cult
        @followers = followers
        @@all << self
    
    end 
    
    def self.all
        @@all
    end
    
    
    def initiation_date
    return ""
    end
    
    end