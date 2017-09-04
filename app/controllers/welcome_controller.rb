class WelcomeController < ApplicationController
  def index
    flash[:notice] = "欢迎光临JDstore!"
  end
end
