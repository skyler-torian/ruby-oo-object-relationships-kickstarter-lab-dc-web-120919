require 'pry'

class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self) 
    end

    def my_projects
        #going through projects and selecting all project backers that match the backer
       ProjectBacker.all.select do |projectbacker|
            projectbacker.backer == self
        end
    end
        

    def backed_projects
        my_projects.map do |projectbacker|
            projectbacker.project
        end
    end

    
    
        #return an array of projects associated
        #with THIS Project instance

       


end