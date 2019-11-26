class EmployeesController < ApplicationController
    def index 
        @employees = Employee.all
    end

    def show
        @employee = Employee.find(params[:id])
        @dog = @employee.dog
    end

    def new
        @employee = Employee.new
        @dogs = Dog.all
    end

    def create 
        employee = Employee.create(employee_params)
        if employee.valid?
            redirect_to employees_path(employee)
        else
            flash[:error] = employee.errors.full_messages
            redirect_to new_employee_path
        end
    end

    def edit
        @employee = Employee.find(params[:id])
        @dog = @employee.dog
    end

    def update
        employee = Employee.find(params[:id])
        employee.update(employee_params)
        redirect_to employee_path(employee)
    end

    def delete
        employee = Employee.find(params[:id])
        employee.destroy
        redirect_to employees_path
    end

    private

    def employee_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id)
    end 
end
