class ContentsController < ApplicationController
  # GET /contents
  # GET /contents.json
  def index
    @contents = Content.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @contents }
    end
  end

  # GET /contents/1
  # GET /contents/1.json
  def show
    @content = Content.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @content }
    end
  end

  # GET /contents/new
  # GET /contents/new.json
  def new
    @content = Content.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @content }
    end
  end

  # GET /contents/1/edit
  def edit
    @post = Post.find_by_url!(params[:post_id])
    @content = Content.find(params[:id])
  end

  # POST /contents
  # POST /contents.json
   respond_to :html, :js
  # POST /contents
  # POST /contents.json
  def create
 
   @post = Post.find_by_url!(params[:post_id])
   @content = @post.content.create(params[:content])
   #flash[:notice] = 'Сообщение создано' if @content.save
   #respond_with @content, :location => :back
   #redirect_to :back, notice: ''
   respond_to do |format|
      format.html { redirect_to p_path(@post.url,@content.id), notice: 'Создано' }
      format.js 
    end

    
  end
  # PUT /contents/1
  # PUT /contents/1.json
  def update

    @post = Post.find_by_url!(params[:post_id])
    @content = @post.content.find(params[:id])
    
    respond_to do |format|
      if @content.update_attributes(params[:content])
       format.html { redirect_to p_path(@post.url,params[:id]), notice: 'Успешно обновлено' }
        format.js { render :nothing => true }
      else
        format.html { render action: "edit" }
        format.js { render json: @content.errors, status: :unprocessable_entity }
      end
    end
  end
 
  # DELETE /contents/1
  # DELETE /contents/1.json
  def destroy
    @post = Post.find_by_url!(params[:post_id])
    @content = Content.find(params[:id])
    @content.destroy
    respond_to do |format|
      format.html { redirect_to :back }
      format.js { render :nothing => true }
    end

  end
end
