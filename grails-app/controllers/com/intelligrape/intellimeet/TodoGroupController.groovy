package com.intelligrape.intellimeet

import grails.converters.JSON

class TodoGroupController {

    def create() {
        TodoGroup todoGroup = new TodoGroup(params)
        todoGroup.save(failOnError: true, flush: true)
        render(todoGroup as JSON)
    }

    def delete() {
        TodoGroup todoGroup = TodoGroup.read(params.id)
        todoGroup.delete()
        render([status: 'success'] as JSON)
    }

    def fetch() {
        TodoGroup todoGroup = TodoGroup.read(params.id)
        render(todoGroup as JSON)
    }

    def update() {
        TodoGroup todoGroup = TodoGroup.read(params.id)
        todoGroup.properties = params
        render todoGroup as JSON
    }
}

