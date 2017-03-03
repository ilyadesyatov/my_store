class ItemsController < ApplicationController

    before_filter :find_item, only: [:show, :edit, :update, :destroy, :upvote]
    before_filter :check_if_admin, only: [:edit, :update, :new, :create]


    def index
      @items = Item.all
      flash[:notice] = "hello"
    end

    def expensive
      @items = Item.where("price > 1000")
      render "index"
    end

    def show
      unless @item
        render text: "Page not found", status: 404
      end
    end

    def new
      @item = Item.new
    end

    def edit

    end

    def create
        @item = Item.create(rant_params)
        if @item.errors.empty?
          redirect_to item_path(@item)
        else
          render "new"
        end
    end

    def update
      @item.update_attributes(rant_params)
      if @item.errors.empty?
        redirect_to item_path(@item)
      else
        render "edit"
      end

    end

    def destroy
      @item.destroy
      redirect_to action: "index"
    end

    def upvote
      @item.increment!(:votes_count)
      redirect_to action: :index
    end

    private
      def find_item
        @item = Item.where(id: params[:id]).first
        render_404 unless @item
      end
end
