

class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.select do |pb_instance|
         pb_instance.backer == self   
    end.map do |backer|
        backer.project
    end
end 


end
