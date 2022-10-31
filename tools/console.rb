require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###
a1 = Author.new("Dan")
m1 =  Magazine.new("Insider", "Lifestyle")
art1 = Article.new(a1, m1, "School Life")

### DO NOT REMOVE THIS
binding.pry

0
