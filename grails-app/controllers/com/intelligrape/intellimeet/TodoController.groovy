package com.intelligrape.intellimeet

import grails.converters.JSON

class TodoController {

    def create(Todo todo) {
        todo.save(failOnError: true, flush: true)
        render(todo as JSON)
    }

    def delete() {
        Todo todo = Todo.read(request.JSON.id)
        todo.delete(flush: true)
        render([status: 'success'] as JSON)
    }

    def fetch() {
        Todo todo = Todo.read(params.id)
        render(todo as JSON)
    }

    def update(Todo todo) {
        todo.properties = params
        render todo as JSON
    }

    def list() {
        List<Todo> todos = Todo.list();
        render(todos as JSON)
    }

    def toggleComplete(Todo todo) {
        todo.save(failOnError: true, flush: true)
        render(todo as JSON)
    }
}
