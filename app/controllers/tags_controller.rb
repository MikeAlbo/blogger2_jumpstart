class TagsController < ApplicationController
    def show
        @tag = Tag.find(params[:id])
        end
    
    def index
        @tag = Tag.all
        end
    
    def destroy
        @tag = Tag.find(params[:id]).destroy
        flash.notice = "Tag '#{@tag.name}' Deleted!"
        redirect_to tag_path(@tag)
        end
end
