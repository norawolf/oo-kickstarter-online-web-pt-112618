class Project
  attr_accessor :title
  attr_reader :backers

  def initialize(title)
    @title = title
    @backers = []
  end


#1) Project - More Advanced #add_backer also adds the project to the backer's backed_projects array
  def add_backer(backer)
    @backers << backer
    backer.backed_projects << self
  end
end
