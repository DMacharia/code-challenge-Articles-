class Author
    attr_reader :name

    @@all = []
  def initialize(name)
    @name = name
    @@all << self
  
  end

  def self.all
    @@all
  end

  def articles
    Article.all.select { |article| article.author == @name }
  end

  def magazines
    #using articles as a helper method
    articles.map { |article| article.magazine} .uniq
  end

  def add_article(magazine, title)
    Article.new(self, magazine, title)
  end

  def topic_areas
    magazines.map{|magazine| magazine.category}.uniq
  end

    
end


