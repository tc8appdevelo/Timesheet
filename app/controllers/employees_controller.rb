class EmployeesController < ApplicationController
  def index
    render json: params
  end

  def show
    @employee = Employee.find_by(id: params[:id])
    render json: @employee
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.save
      render json: @employee
    else
      render json: "not valid employee"
    end
  end

  private
    def employee_params
      params.permit(:name, :role, :total_hours, :available_hours)
    end
end