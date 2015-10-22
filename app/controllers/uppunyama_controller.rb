class UppunyamaController < ApplicationController
  before_action :login
  
  def new
  end

  def index
    User.find(:all)
    if params[:body].any?
      @uppun = uppun_params(:body).all
      @hyoukou = @uppun.sum
    else
      @hyoukou = '128'
    
    #@user =User.find_or_create_by(params[:uuid])
    #if uppun_params.any?
    #  @uppun = Users.all
    #  @hyoukou = @uppun.sum
    #else
    #  @hyoukou = '128'
    end
  end
  
  def login
    if session[:user_id].blank?
      user = User.create
      session[:user_id] = user.id
    end
    @user_id = session[:user_id]
  end
  
  def create
    @user = User.new(uppun_params)
    @uppun = @user.sum(uppun_params[:body].length)
    @uppun.save
    flash.now[:alert] = 'うっぷんの送信ができました'
    redirect_to root_path
  end
  
  def about
  end
  
  public
  def uppun_params
    params.require(:user).permit(:body, :user_id)
  end
end