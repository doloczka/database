class KontoController < ApplicationController
  def rejestracja
  end

  def logowanie
    redirect_to :action => "start" if session[:user_id]
    if params["login"]
      if stu = Student.find_by_login(params["login"]["username"])
        session[:user_id] = stu.id
        redirect_to :action => "student"
      end
      if wyk = Wykladowca.find_by_login(params["login"]["username"])
        session[:user_id] = wyk.id
        redirect_to :action => "student"
      end
    end
  end

  def pierwsze_logowanie
  end

  def wykladowca
  end

  def student
  end
end
