class LoopsController < ApplicationController
  before_action :find_loop, only: [:show, :edit, :update, :destroy, :download_file]

  def index
    @loops = Loop.all.order("created_at DESC")
    @looper_loops = LooperLoop.all
  end

  def browse_verified
    @loops = Loop.where(:user_id => [1, 5]).order("created_at DESC")
  end

  def browse_all
    @loops = Loop.all.order("created_at DESC")
  end

  def new
    @loop = current_user.loops.build
  end

  def create
    @loop = current_user.loops.build(loop_params)

    if @loop.save
      redirect_to root_path, notice: "Loop was successfully created"
    else
      render 'new'
    end
  end

  def show
  end

  def update
    if @loop.update(loop_params)
      redirect_to @loop, notice: "loop was successfully updated"
    else
      render 'edit'
    end
  end

  def destroy
    @loop.destroy
    redirect_to root_path
  end

  private

  def loop_params
      params.require(:loop).permit(:title, :description, :file)
  end

  def find_loop
    @loop = Loop.find(params[:id])
  end
end
