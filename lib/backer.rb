require 'pry'

class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end


    def back_project(project)
        new_pb = ProjectBacker.new(project, self)
    end

    def backed_projects
        pb_int = ProjectBacker.all.select {|pb| pb.backer == self}
        pb_int.map {|pb| pb.project }
    end


end