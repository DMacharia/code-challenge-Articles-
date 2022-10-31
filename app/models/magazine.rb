class Magazine
  attr_accessor :name, :category

    @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
  end

  def self.all
    @@all
  end

  def articles_magazine #helper method
    Article.all.filter{|article| article.magazine.name ==@name}
  end

  def authors_magazine #helper method
    articles_magazine.map{|article| article.author}
  end

  def contributors
    #filter from articles & map to get uniq name
    authors_magazine.uniq
  end

  def self.find_by_name(name)
    Magazine.all.find{|magazine| magazine.name == name}
  end 

  def article_titles
    articles_magazine.map{|article| article.title}
  end

  def contributing_authors
    main_authors = []
    authors_magazine.tally.each {|key,value| value > 2 && (main_authors << key)}
    main_authors
  end

end

    