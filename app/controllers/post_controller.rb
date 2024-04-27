class PostController < ApplicationController 
    def data 
        post = Post.create({title:"firstapp", content: "done"}) 
    end

end