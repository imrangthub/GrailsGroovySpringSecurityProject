package com.blog.user

import com.seringsecuritydemo.User
import grails.converters.JSON

class UserController {

    def dashboard() {
        def userList = User.list()
        ['userList':userList]
    }

    def create(){}

    def save(){
        if(params.username && params.password && params.fullname){

            User user =  User.findByUsername(params.username)
            if(user){
                flash.message = "This user already exists."
                redirect(action: 'create')
                return
            }
            user =  new User()
            user.username = params.username
            user.fullname = params.fullname
            user.password = params.password
            user.activeStatus = 0
            flash.message = "Successfully done."
            user.save()
            redirect(action: 'create')
            return
        }else{
            flash.message = "Create field, Require field not be empty."
            redirect(action: 'create')
            return
        }
    }

    def activeUser(Long id){
        User user = User.get(id)
        if (!user) {
            flash.message = "User not found."
            redirect(action: 'dashboard')
        }
        user.activeStatus= 1
        user.save(flush: true)
        flash.message = "User active successfully."
        redirect(action: 'dashboard')
    }

    def disabledUser(Long id){
        User user = User.get(id)
        if (!user) {
            flash.message = "User not found."
            redirect(action: 'dashboard')
        }
        user.activeStatus= 0
        user.save(flush: true)
        flash.message = "User disable successfully."
        redirect(action: 'dashboard')
    }

    def delete(Long id){
        User user = User.get(id)
        if (!user) {
            flash.message = "User not found."
            redirect(action: 'dashboard')
        }
        user.delete()
        flash.message = "User delete successfully."
        redirect(action: 'dashboard')
    }



}
