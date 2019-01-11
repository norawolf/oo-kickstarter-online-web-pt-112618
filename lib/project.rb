class Project
  @@backers = []
  attr_accessor :title

  def initialize(title)
    @title = title
  end

  def backers
    @@backers
  end

#1) Project - More Advanced #add_backer also adds the project to the backer's backed_projects array
  def add_backer(backer)
    @@backers << backer
    backer.backed_projects << self
  end
end
