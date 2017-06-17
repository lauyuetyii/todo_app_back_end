class TodoController < ApplicationController
    def index
        @todo_description = " Make the curriculum"
        @todo_promodoro_estimate = 4
    end
    def show
    end
end