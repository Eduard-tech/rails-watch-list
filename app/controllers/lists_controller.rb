class ListsController < ApplicationController
    def index
        @lists = List.all

    end

    def show
    end

    def new
        @list = List.new
    end

    def create
        @list = List.new(list_params)
        if @list.save
            redirect_to lists_path
        else
            render :new
        end
    end

    private
    def find_list
        @list = List.find(params[:id])
    end

    def list_params
        params.require(:list).permit(:name)
    end
end