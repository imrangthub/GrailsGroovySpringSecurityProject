import com.seringsecuritydemo.Role
import com.seringsecuritydemo.User
import com.seringsecuritydemo.UserRole

class BootStrap {

    def init = { servletContext ->
        def superAdmin = new User(username: 'superadmin', password: 'superadmin', fullname: 'MD IMRAN HOSSAIN').save(flush: true)
        def admin = new User(username: 'admin', password: 'admin', fullname: 'IMRAN').save(flush: true)


        def superAdminRole = new Role(authority: 'ROLE_SUPER_ADMIN').save(flush: true)
        def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)

        new UserRole(user: superAdmin, role: superAdminRole).save(flush: true)
        new UserRole(user: admin, role: adminRole).save(flush: true)
    }
    def destroy = {
    }
}
