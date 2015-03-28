package com.intelligrape.intellimeet

class Todo {
    String task
    Boolean completed = false
    Long dateCreated
    Long lastUpdated
    Priority priority = Priority.LOW

//    static belongsTo = [collection: TodoGroup]

    def beforeInsert = {
        dateCreated = lastUpdated = new Date().time
    }

    def beforeUpdate = {
        lastUpdated = new Date().time
    }
}
