class PlayController < ApplicationController
   def play_game
    @selected_users = User.selected_users
    @pic_user = User.pic_user(@selected_users)
   end

   def answer
    selected_user = User.where(:id => "#{params[:user_id]}")
    @selected_user = User.first_user(selected_user)

    pic_user = User.where(:id => "#{params[:pic_user_id]}")
    @pic_user = User.first_user(pic_user)
   end
end



