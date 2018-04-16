package com.blog

import springsecuritypro_05.Post

class PostController {

    def index() {
        def postList = Post.list()
        ['postList':postList]
    }

    def create(){}

    def savePost(params){
        Post post = new Post()
        if(params.title && params.body){
            post.title = params.title
            post.body = params.body
            flash.message = "Successfully create your post."
        }else{
            flash.message = "Create field. Require field not be empty."
            return
        }
        if(!post.save()){
            flash.message = "Something wrong please contact with Admin."
        }
        redirect(action: 'create')

    }

    def delete(Long id){
        Post post = Post.findById(id)
        post.delete()
        flash.message = "Successfully delete your post."
        redirect(action: 'index')
    }
}
