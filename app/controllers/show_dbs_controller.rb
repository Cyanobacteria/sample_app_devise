class ShowDbsController < ApplicationController
  def profiles
   @profile = Profile.all
  end
  def users
   @user = User.all 
  end
  def microposts
   @micropost = Micropost.all
  end
  
 
end
