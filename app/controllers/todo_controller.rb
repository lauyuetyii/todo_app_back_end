class TodoController < ApplicationController
    def index
        # @todo_description = " Make the curriculum"
        # @todo_promodoro_estimate = 4
        @test_variable = true
        
    end
    
    
    def create
        z=Todo.new
        z.description=params['description']
        z.pomodoro_estimate=params['pomodoro_estimate']
        z.save
        redirect_to "/todo/show/#{z.id }"
    end
    
    def show
        @todo = Todo.find_by_id (params[:id])
        @todo_description = " Make the curriculum"
        todo_id = params[:id]
    
    
        if  todo_id =='1'
            @todo_description = "Make The Curriculum"
            @todo_promodoro_estimate = 4
        elsif todo_id =='2'    
            @todo_description = "Buy Workshop Supplies"
         elsif todo_id =='3'    
            @todo_description = "Meet With The Volunteer Trainers"
        elsif todo_id =='4'    
            @todo_description = "Order Food For Saturday and Sunday"
         elsif todo_id =='5'    
            @todo_description = "Check Pre-Work Assignment"
         elsif todo_id =='6'    
            @todo_description = "Send Workshop Location to All The Students"
         elsif todo_id =='7'    
            @todo_description = "Have A Great Workshop"
        end
   end     
    def new
    end
end
