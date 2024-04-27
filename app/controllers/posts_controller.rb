class PostsController < ApplicationController
    def index
     	@posts=Post.all
    end

    def new 
      	@post=Post.new
    end

    def create

        @post = Post.new(title: params[:title], body: params[:body])

        if @post.save 
        redirect_to @post
        else
        render :new 
        end

    end

    def show
      	@post=Post.find(params[:id])
    end

    def edit
      	@post = Post.find(params[:id])
    end

      def update
          @post = Post.find(params[:id])
          if @post.update(post_params)
              redirect_to @post
          else
              render :edit
          end
      end

    def destroy
        @post = post.find(params[:id]) 
        @post.destroy
        redirect_to @post
    end

end