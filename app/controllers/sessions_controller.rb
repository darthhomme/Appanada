class SessionsController < ApplicationController

  def create

    employee = Employee.find_by_username(params[:username])

    if employee && employee.authenticate(params[:password_digest])
      session[:employee_id] = employee.id
      redirect_to meals_path
    else

      redirect_to index_path
      #redirect_to log_in_path

    end

  end

  def destroy

    session[:employee_id] = nil
    redirect_to index_path

  end

end
