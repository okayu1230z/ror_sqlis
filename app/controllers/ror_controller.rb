class RorController < ApplicationController
  def index
  end

  def login

    con = ActiveRecord::Base.connection
    result = con.select_all("SELECT * FROM users WHERE nickname = '#{params[:nickname]}' AND password = '#{params[:password]}'")

    puts result
    if result.to_a.size == 1
      render plain: 'FLAG{ror_sqli}'
      return
    end

    render plain: 'Login Failed'
  end
end
