class BookmarksController < ApplicationController

  def create
    @list = List.find(params[:list_id])
    @bookmark = Bookmark.new(params_bookmark)
    @bookmark.list = @list

    if @bookmark.save
      redirect_to list_path(@list)
    else
      render :new[@list], status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.delete
    redirect_to lists_path
  end

  private

  def params_bookmark
    params.require(:bookmark).permit(:comment, :movie_id, :list_id)
  end
end
