require 'pry'

class Backer

    attr_reader :name 

    @@all = []
    def self.all
        @@all
    end 

    def initialize(name)
        @name = name
        @@all << self
    end 

    def back_project(project)
        ProjectBacker.new(project, self)
    end 

    def backed_projects
        project_backers = ProjectBacker.all.select do |p| 
            p.backer == self
        end 
        project_backers.map do |pbs| 
        pbs.project
        end
    end

end 