class MicroBlogsController < ApplicationController
  before_action :set_micro_blog, only: [:show, :update, :destroy]

  # GET /micro_blogs
  def index
    @micro_blogs = MicroBlog.all

    render json: @micro_blogs
  end

  # GET /micro_blogs/1
  def show
    render json: @micro_blog
  end

  # POST /micro_blogs
  def create
    @micro_blog = MicroBlog.new(micro_blog_params)

    if @micro_blog.save
      render json: @micro_blog, status: :created, location: @micro_blog
    else
      render json: @micro_blog.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /micro_blogs/1
  def update
    if @micro_blog.update(micro_blog_params)
      render json: @micro_blog
    else
      render json: @micro_blog.errors, status: :unprocessable_entity
    end
  end

  # DELETE /micro_blogs/1
  def destroy
    @micro_blog.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micro_blog
      @micro_blog = MicroBlog.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def micro_blog_params
      params.require(:micro_blog).permit(:user_id, :body)
    end
end
