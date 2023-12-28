class ContentsController < ApplicationController
    before_action :set_content, only: [:show]
  
    def index
      @contents = Content.all
  
      if @contents.present?
        render json: @contents, status: :ok
      else
        render json: { error: "No contents found" }, status: :not_found
      end
    end
 
    def show
      if @content.present?
        render json: @content, status: :ok
      else
        render json: { error: "Content not found" }, status: :not_found
      end
    end
  
    private
  
  
    def set_content
      @content = Content.find_by(id: params[:id])
    end
  end
  