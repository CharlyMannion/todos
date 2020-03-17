class TodosController < ApplicationController
  before_action :authenticate

  def index
    @todos = Todo.all
  end

  # def show
  #   @todo = Todo.find(params[:id])
  # end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.new(todo_params)

    @todo.save
    redirect_to todos_path
  end

  private
  def todo_params
    params.require(:todo).permit(:title)
  end
end
