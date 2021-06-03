class EmailsController < ApplicationController

  def index
    @emails = Email.all
  end

  def show
    @email = Email.find(params[:id])
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end

  def new
    @email = Email.new
  end

  def edit
  end

  def create
    @email = Email.create(body: Faker::Lorem.paragraph, object: Faker::Book.title)

    respond_to do |format|
        format.html { redirect_to root_path }
        format.js { }
    end

  end

  def update
    
  end

  def destroy
    @email = Email.find(params[:id])
    @email.destroy
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
    end
  end

  private
 
  def set_email
   
  end

  def email_params
    
  end
end