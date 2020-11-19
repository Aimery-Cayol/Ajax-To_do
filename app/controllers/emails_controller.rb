require 'faker'
class EmailsController < ApplicationController

  def index
    @emails = Email.all
  end
  
  def new
    @emails = Email.all
  end

  def create
    @email = Email.create(object: Faker::Lorem.sentence,
                        body: Faker::Lorem.paragraph)
      respond_to do |format|
       format.html { redirect_to root_path }
       format.js { }
    end
  end

  def show
    @email = Email.find(params[:id])
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end

  def destroy
    @email = Email.find(params[:id])

    if @email.destroy 
      respond_to do |format|
        format.html { redirect_to root_path }
        format.js { }
      end
    else
      redirect_to root_path
    end
    
  end



end



