class HomeController < ApplicationController
  def index
    @cruds = Crud.all
  end
end
