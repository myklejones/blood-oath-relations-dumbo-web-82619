require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

cult01 = Cult.new("knights templar","israel", 1119, "non nobis, domine, non nobis, sed,nomini tuo da gloriam")
cult02 = Cult.new("Free Masons","New York", 1733, "avdi vide tace")
cult03 = Cult.new("kage", "japan", 2016,"embrace the shadows")
cult04 = Cult.new("eye of the midnight sun","israel", 2016, "we will be back")
cult05 = Cult.new("hunters accociation","New York", 2019, "to slay a demon")
cult06 = Cult.new("heros league", "japan", 2015,"plus ultra")

n1 = Followers.new("jacques de molay",25 , "i am a servent of god")
n2 = Followers.new("george washington", 21, "it is better to offer no excuse than a bad one.")
n3 = Followers.new("minato", 26, "thunder god") 
n4 = Followers.new("litch", 28, "i hate humans")
n5 = Followers.new("tanjiro", 16, "nezuko")
n6 = Followers.new("midoria", 15,"one for all")

b1 = Bloodoath.new(cult01,n1)
b2 = Bloodoath.new(cult02,n2)
b3 = Bloodoath.new(cult03,n3)
b4 = Bloodoath.new(cult04,n5)
b5 = Bloodoath.new(cult05,n5)
b6 = Bloodoath.new(cult06,n5)
b7 = Bloodoath.new(cult05,n6)
b8 = Bloodoath.new(cult06,n6)



binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits
