package com.intelligrape.intellimeet

import grails.converters.JSON

class Todo {
    String task
    Boolean completed = false
    Date dateCreated
    Date lastUpdated

//    static belongsTo = [collection: TodoGroup]

    JSON toJSON(json) {
        json.build {
            task(task)
            dateCreated(dateCreated)
            completed(completed)
        }
    }
}
