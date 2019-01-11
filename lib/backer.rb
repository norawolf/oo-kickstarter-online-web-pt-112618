require 'pry'
class Backer

  @@backed_projects = []

  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def backed_projects
    @@backed_projects
  end

#  1) Backer - More Advanced #back_project also adds the backer (self) to the project's backers array

  def back_project(project)
    @@backed_projects << project
    project.add_backer(self)
  end
end
