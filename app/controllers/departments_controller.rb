class DepartmentsController < ApplicationController
  before_action :set_department, only: [:show, :update, :edit, :destroy]
  def index
    @departments = Department.all
    

    render component: 'Departments', props: {departments: @departments}

  end

  def show
    @department = Department.find(params[:id])
    @items = @department.items.all
    
    render component: "Department", props: {department: @department, items: @items}
  end

  def new
    @department = Department.new

    render component: "NewDepartment"
  end
  def create
  @department = Department.new(department_params)
  if @department.save
    redirect_to departments_path
  end
  end

  def edit
  end

  private 

  def set_department
    @department = Department.find(params[:id])
  end 

  def department_params
    params.require(:department).permit(:name, :body)
  end 


end
