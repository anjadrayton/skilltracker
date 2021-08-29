class TasksController < ApplicationController

  def index
    @tasks = task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
    @category = Category.find(params[:category_id])
  end

  def create
    @task = Task.new(task_params)
    @category = Category.find(params[:category_id])
    @task.category_id = params[:category_id]

    if @task.save
      redirect_to @category, notice: 'task was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to categories_path, notice: 'task was successfully destroyed.'
  end

  def edit
    @category = Category.find(params[:category_id])
    @task = Task.find(params[:id])
  end

  def update
    @category = Category.find(params[:category_id])
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to categories_path, notice: 'Task was successfully updated.'
    else
      render :edit
    end
  end

  private

  def task_params
    params.require(:task).permit(:name)
  end
end

#  t.string :name
#     t.references :category, null: false, foreign_key: true
#     t.float :compound_rate
#     t.integer :compound_time_block
#     t.integer :start_date
#     t.integer :goal_end_date
#     t.integer :goal_success_rate
#     t.integer :rep_time_block
#     t.integer :reps_per_time_block
