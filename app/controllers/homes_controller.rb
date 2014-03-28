class HomesController < ApplicationController

  def index
    @homes = Home.all

  end

  def create
    @home = Home.new(home_attributes)
    if @home.save 
      redirect_to list_path
      flash[:notice] = "Your support ticket was created successfully!"

    else

      redirect_to error_path

    end
  end

  def delete
   if @home.destroy
        redirect_to list_path, notice: "Question deleted successfully"
    else
      redirect_to error_path
    end
  end

  def new
    @home = Home.new
  end

  def list
  end

  def codedump
  end

  def show
  end

  def error
  end

  private

  def home_attributes
    home_attributes = params.require(:home).permit([:name, :department, :message])
  end 

end
