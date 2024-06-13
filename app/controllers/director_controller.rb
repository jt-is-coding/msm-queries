class DirectorController < ApplicationController
    def index
        render({ :template => "director_templates/list"})
    end

    def show_youngest
        matching_records = Director.where.not({ :dob => nil }).order({ :dob => :asc })
        @the_youngest_director = matching_records.at(-1)
        render({ :template => "director_templates/youngest" })
    end

    def show_eldest
        matching_records = Director.where.not({ :dob => nil }).order({ :dob => :asc })
        @the_eldest_director = matching_records.at(0)
        render({ :template => "director_templates/eldest" })
    end

    def show
        the_id = params.fetch("the_id")
        matching_records = Director.where({ :id => the_id })
        @the_director = matching_records.at(0)
        render({ :template => "director_templates/details"})
    end
end