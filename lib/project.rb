class Project

    attr_accessor :title 

    @@all = []

    def initialize(title)
        @title = title
        @@all << self 
    end

    def self.all
        @@all
    end 

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end 

    def backers
        pps = ProjectBacker.all.select {|p| p.project == self}

        pps.map {|pr| pr.backer}
    end 

end 