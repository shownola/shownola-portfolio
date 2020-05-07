class TopicsController < ApplicationController
  before_action :set_sidebar_topics
  layout 'blog'

  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])

    if logged_in?(:site_admin)
      @blogs = @topic.blogs.recent.page(params[:page]).per(5)
    else
      @blogs = @topic.blogs.published.recent.page(params[:page]).per(5)
    end
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      flash[:success] = 'Your topic has been saved'
      redirect_to topics_path(@topic)
    else
      flash[:notice] = 'There was an error creating topic'
      render :new
    end
  end




  private

  def set_sidebar_topics
    @sidebar_topics = Topic.with_blogs
  end

  def topic_params
    params.require(:topic).permit(:title)
  end



end
