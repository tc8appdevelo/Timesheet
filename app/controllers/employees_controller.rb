class EmployeesController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find_by(id: params[:id])
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      render json: @employee
    else
      render json: "not valid employee"
    end
  end
  
  def update
    @employee = Employee.find_by(id: params[:id])
    if @employee.update(employee_params)
      render json: @employee
    else
      render json: "faild to update employee"
    end
  end

  def destroy
    @employee = Employee.find(params[:id])
    @employee.destroy
    render json: "Employee Destroyed"
  end

  private
    def employee_params
      params.permit(:name, :role, :total_hours, :available_hours)
    end
end