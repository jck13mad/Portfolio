class Api::V1::CommentsController < ApplicationController
  before_action :get_project, only: [ :index, :create ]

  # GET /comments or /comments.json
  def index
    comments = @project.comments
    render json: comments
  end

  # POST /comments or /comments.json
  def create
    comment = @project.comments.build(comment_params)

    if comment.save
      render json: comment 
    else
      render json: { message: 'Error: Failed to add comment.'}
    end
  end

  private
    def get_project
      @project ||= Project.find(params[:project_id])
    end

    # Only allow a list of trusted parameters through.
    def comment_params
      params.require(:comment).permit(:project_id, :u_name, :content)
    end
end
