
require 'rails/all'
require 'carrierwave'
class UsersController < ApplicationController
	def new
		redirect_to new_message_path if current_user
	  @user = User.new
	end

	def create
	  @user = User.new(params[:user])
	  if @user.save
	    redirect_to log_in_url, :notice => "Signed up!"
	  else
	    render "new"
	  end
	end

	def edit
		@user = User.find_by_id(params[:id])
	end

	def update
		@user = User.find_by_id(params[:id])

		if @user.update_attributes(params[:user])
			redirect_to new_message_path, :notice => "Photo Updated"
		else
			render "edit"
		end
	end
end
