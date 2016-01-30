class SessionsController < ApplicationController

  def create

    employee = Employee.find_by_username(params[:username])

    if employee && employee.authenticate(params[:password_digest])
      session[:employee_id] = employee.id
      redirect_to meals_path
    else

      redirect_to log_in_path

    end

  end

  def destroy

    session[:employee_id] = nil
    redirect_to log_in_path
    
  end

  # def create
  #   teacher = Teacher.find_by_teacher_name(params[:teacher_name])
  #   if teacher && teacher.authenticate(params[:password])
  #     session[:teacher_id] = teacher.id
  #     redirect_to candies_path
  #   else
  #     redirect_to log_in_path
  #   end
  # end
  #
  # def destroy
  #   session[:teacher_id] = nil
  #   redirect_to log_in_path
  # end
end
