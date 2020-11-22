class HobbiesController < ApplicationController
  def create
    @hobby = Hobby.new(hobby_params)
    @hobby.save
    redirect_to root_path
  end


  private
  
  def hobby_params
    params.permit(:hobby_name).merge(user_id: current_user.id)
  end
end