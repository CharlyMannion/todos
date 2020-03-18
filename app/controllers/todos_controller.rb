class TodosController < ApplicationController
  before_action :authenticate

  def index
    # @todos = Todo.where(email: current_email )
    @todos = current_user.todos
  end

  # def show
  #   @todo = Todo.find(params[:id])
  # end

  def new
    @todo = Todo.new
  end

  def create
    current_user.todos.create(todo_params)
    # @todo = Todo.new(todo_params.merge(email: current_email))
    # @todo.save
    redirect_to todos_path
  end

  private
  def todo_params
    params.require(:todo).permit(:title)
  end
end
