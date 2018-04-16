package com.blog

import springsecuritypro_05.Post

class HomeController {

    def index() {
        def postList = Post.list()
        ['postList':postList]
    }
}
