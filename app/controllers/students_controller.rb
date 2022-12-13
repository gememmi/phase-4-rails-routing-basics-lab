require 'byebug'

class StudentsController < ApplicationController
    def index 
        students = Student.all
        render json: students
        byebug
    end

    def grades
        students = Student.order(:grade)
        render json: students
        byebug
    end

    def highest_grade 
        students = Student.all.max_by {|student| student.grade}
        render json: students
    end
  
end
