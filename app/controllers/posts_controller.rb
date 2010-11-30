class PostsController < ApplicationController
  #respond_to :xml, :html, :amf

  # GET /posts
  # GET /posts.xml
  def index
    @posts = Post.all

    respond_to do |format|
      format.amf  { render :amf => @posts }
      format.html # index.html.erb
      format.xml  { render :xml => @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.xml
  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.amf  { render :amf => @post}
      format.html # show.html.erb
      format.xml  { render :xml => @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.xml
  def new
    @post = Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.xml
  def create
    @post = is_amf ? params[:post] : Post.new(params[:post])

#    flash[:notice] = "Post successfully created" if @post.save
#    respond_with(@post) do |format|
#      format.amf  { render :amf => @post }
#      format.html { redirect_to(@post) }
#      format.xml  { render :xml => @post, :status => :created, :location => @post }
#    end

    #flash[:notice] = "Post successfully created" if @post.save
    respond_to do |format|
      if @post.save
      format.amf  { render :amf => @post, :class_mapping_scope =>'test'}
      format.html { redirect_to(@post) }
      format.xml  { render :xml => @post, :status => :created, :location => @post }
      end
    end

#    respond_to do |format|
#      if @post.save
#        flash[:notice] = 'Post was successfully created.'
#        format.amf  { render :amf => @post }
#        format.html { redirect_to(@post) }
#        format.xml  { render :xml => @post, :status => :created, :location => @post }
#      else
#        format.amf  { render :amf => FaultObject.new(@post.errors.full_messages.join('\n'))}
#        format.html { render :action => "new" }
#        format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
#      end
#    end
  end

  # PUT /posts/1
  # PUT /posts/1.xml
  def update
    if is_amf
      create
    else
      @post = Post.find(params[:id])

      respond_to do |format|
        if @post.update_attributes(params[:post])
          flash[:notice] = 'Post was successfully updated.'
          format.html { redirect_to(@post) }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @post.errors, :status => :unprocessable_entity }
        end
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.xml
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to(posts_url) }
      format.xml  { head :ok }
    end
  end
end
