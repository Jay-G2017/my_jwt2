class ProjectsController < ApplicationController
  def hello
    render json: {Hello: 'From Jay'}
  end
end