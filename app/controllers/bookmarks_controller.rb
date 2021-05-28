class BookmarksController < ApplicationController
    def new
        @list = List.find(params[:list_id])
        @bookmark = Bookmark.new
    end

    def create
        @bookmark = Bookmark.new(booky_params)
        @list = List.find(params[:list_id])
        @bookmark.list = @list
        if @bookmark.save
          redirect_to list_path(@list)
        else
          render :new
        end  
    end

    def destroy
        @bookmarks= Bookmark.find(params[:id])
        @list = @bookmarks.list
        @bookmarks.destroy
        redirect_to list_path(@list)
    end

    private
    def booky_params
        params.require(:bookmark).permit(:comment, :movie_id, :list_id)
    end
end

