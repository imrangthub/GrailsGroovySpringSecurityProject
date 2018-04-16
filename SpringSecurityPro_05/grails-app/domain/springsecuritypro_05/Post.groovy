package springsecuritypro_05

class Post {
    String title
    String body
    String createdBy
    String createdDate = new Date()
    int activeStatus = 1

    static constraints = {
        activeStatus nullable: true
        createdBy nullable: true
        body nullable: true
        title nullable: true
    }
}
