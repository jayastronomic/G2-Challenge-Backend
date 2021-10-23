class EmployeesController < ApplicationController
    def index 
        visitor = current_visitor
        if visitor
            employees = Employee.all
            render json: employees, current_visitor_id: visitor.id
        else
            employees = Employee.all
            render json: employees
        end
    end

    def employee_params
        params.require(:employee).permit(
            :name,
            :title,
            :bio,
            :image_url
        )
    end
end