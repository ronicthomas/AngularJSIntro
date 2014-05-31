package com.intelligrape.intellimeet

import grails.converters.JSON

class TodoGroup {
    String ownedBy
    String name

    static hasMany = [todos: Todo]

    JSON toJSON(json) {
        json.build {
            ownedBy(ownedBy)
            name(name)
            todos(todos)
        }
    }
}
