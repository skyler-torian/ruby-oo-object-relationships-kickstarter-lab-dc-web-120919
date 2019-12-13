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
        binding.pry
            projectbacker.backer == self
        end
    end
        

    def backed_projects
        self.my_projects.map do |projectbacker|
            project_backer.project

        end
       
    end


end