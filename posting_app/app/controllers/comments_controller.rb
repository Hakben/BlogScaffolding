class CommentsController < ApplicationController


  before_filter :authenticate_user!, except: :show
  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = Comment.find(params[:id])
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    @comment = Comment.new
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # POST /comments
  # POST /comments.json
  def create
    @post = Post.find(params[:post_id])
    @comments = @post.comments.all
    @comment = @post.comments.build(params[:comment])
    @comment.user = current_user

    if @comment.save
      flash[:notice] = "Comment created"
      redirect_to @post
    else
      flash[:error] = "There was a problem saving the comment"
      render 'posts/show'
    end
  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @comment = Comment.find(params[:id])
    if @comment.update_attributes(params[:comment])
      redirect_to @comment, notice: 'Comment was successfully updated.' 
    else
      render "edit"
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to comments_url
  end
end
