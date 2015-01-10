class EmployeesController < ApplicationController

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.create(employee_params)
    if @employee.save
      redirect_to employees_path
    else
      redirect_to new_employee_path
    end
  end

  def index
    @employees = Employee.all
  end   

  private
  def employee_params
    params.require(:employee).permit(:emp_name,:emp_sal,:emp_doj)
  end

end
