require 'pry'

class Project

    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        new_pb = ProjectBacker.new(self, backer)
    end

    def backers
        pb_int = ProjectBacker.all.select {|pb| pb.project == self}
        pb_int.map {|pb| pb.backer }
     
        
    end


end