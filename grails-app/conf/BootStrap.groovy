import com.intelligrape.intellimeet.Todo

class BootStrap {

    def init = { servletContext ->
        ["Eat", "Drink", "Be merry", "Scare the world", "Sleep"].each {
            Todo.findOrSaveWhere(task: it)
        }
    }
    def destroy = {
    }
}
