class EmployeesController < ApplicationController
  def new
    @employee = Employee.new
  end

  def create
    Employee.create(employee_params)
    redirect_to log_in_path
  end

  def log_in
  end

  private

  def employee_params
    params.require(:employee).permit(:firstname, :lastname, :username, :password_digest)
  end
end

# employees GET    /employees(.:format)          employees#index
#           POST   /employees(.:format)          employees#create
# new_employee GET    /employees/new(.:format)      employees#new
# edit_employee GET    /employees/:id/edit(.:format) employees#edit
#  employee GET    /employees/:id(.:format)      employees#show
#           PATCH  /employees/:id(.:format)      employees#update
#           PUT    /employees/:id(.:format)      employees#update
#           DELETE /employees/:id(.:format)      employees#destroy
