class RequestsController < ApplicationController

  before_action :set_request, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: [:index, :create, :new]
  before_filter :authenticate_user!, only: :create

  def index
    @requests = @user.requests
  end

  def show
    @user = current_user
  end

  def new
    @request = @user.requests.new
  end

  def edit
    @user = current_user
  end

  def create
    @request = @user.requests.new(request_params)
    @request.status = "0"
    @request.email = current_user.email

    respond_to do |format|
      if @request.save
        format.html { redirect_to @request, notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @request }
      else
        format.html { render :new }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to @request, notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @request }
      else
        format.html { render :edit }
        format.json { render json: @request.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @request.destroy
    respond_to do |format|
      format.html { redirect_to user_requests_path(current_user), notice: 'Post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private

    def set_request
      @request = Request.find(params[:id])
    end

    def set_user
      @user = User.find(params[:user_id])
    end

    def request_params
      params.require(:request).permit(:email, :type_request, :body, :time_request, :price, :phone_user, :status, :user_id)
    end

end
