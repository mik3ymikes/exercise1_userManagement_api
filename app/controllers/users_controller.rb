class UsersController < ApplicationController
   
    
    def index
    user=User.all
    render json:user
   end


   def show
    user=User.find(params[:id])
    if user.save
        render json: user
    else
        render json: {error: "unable to create"}
    end
   end



    def create
        user=User.create(user_params)
        if user.save
            render json: user
        else
            render json: {error: "unable to create"}
        end
    end


    



    def user_params
        params.require(:user).permit(:full_name, :email, :age)
    end
end
