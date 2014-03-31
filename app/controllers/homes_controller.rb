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

  def destroy
    @home = Home.find(params[:id])
    @home.destroy

    redirect_to list_path

  end

  # def delete
  #  if @home.destroy
  #       redirect_to list_path, notice: "Question deleted successfully"
  #   else
  #     redirect_to error_path
  #   end
  # end

  def edit
    @home = Home.find(params[:id])

  end

  # def update
  #   @home = Home.find(params[:id])
  #   redirect_to list_path
  # end

 def update
    @home = Home.find(params[:id])
    if @home.update_attributes(home_attributes)
      redirect_to list_path
    else
      redirect_to error_path
    end
  end


  def new
    @home = Home.new
  end

  def list
    @homes = Home.all
  end

  def codedump
  end

  def show
  end

  def error
  end

  private

  def home_attributes
    home_attributes = params.require(:home).permit([:name, :email, :department, :message])
  end 

end
