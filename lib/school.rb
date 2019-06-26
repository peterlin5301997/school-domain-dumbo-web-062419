# code here!
class School

    def initialize(school_name)
        @name = school_name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student_name, grade)
        if @roster[grade] == nil
            @roster[grade] = []
            @roster[grade] << student_name
        else
            @roster[grade] << student_name
        end
    end

    def grade(grade_level)
        return @roster[grade_level]
    end

    def sort
        @roster.each do |grade, students|
            @roster[grade] = students.sort
        end
    end
end