package com.blog.user


class LoginController {

    /**
     * Dependency injection for the springSecurityService.
     */
    def springSecurityService

    static defaultAction = "auth"

    def auth(){
        if (springSecurityService.isLoggedIn()) {
            redirect(action:'loginSuccess')
            return
        }
        render view: 'login'
    }

    def loginSuccess() {
        redirect (controller:'user', action: 'dashboard')
    }
}
