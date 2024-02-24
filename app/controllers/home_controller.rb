class HomeController < ApplicationController
  def index
    user = User.find(1)
    user.roles << Role.create(name:"Speaker")
  end
end
