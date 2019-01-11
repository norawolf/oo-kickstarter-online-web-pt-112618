require 'pry'
class Backer

  attr_accessor :name
  attr_reader :backed_projects

  def initialize(name)
    @name = name
    @backed_projects = []
  end

#  1) Backer - More Advanced #back_project also adds the backer (self) to the project's backers array

  def back_project(project)
    backed_projects << project
    project.add_backer(self)
  end
end
