class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def my_projects
        ProjectBacker.all.select do |projectbacker|
            projectbacker.project == self
        end
    end
      

    def backers
        
        #look through all project instances
        my_projects.map do |b|
            b.backer
        end
    end
  

end