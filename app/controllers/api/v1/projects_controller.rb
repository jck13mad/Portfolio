class Api::V1::ProjectsController < ApplicationController

  # GET /projects or /projects.json
  def index
    projects = Project.all
    render json: ProjectSerializer.new(projects).to_serialized_json 
  end

  # GET /projects/1 or /projects/1.json
  def show
    project = Project.find(params[:id])
    render json: ProjectSerializer.new(project).to_serialized_json 
  end

end
