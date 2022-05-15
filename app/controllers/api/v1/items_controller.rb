class Api::V1::ItemsController < ApplicationController
	def index 
		items = Item.page params[:page]
		render json: {resources: items, pager: {
			current_page: items.current_page,
			total_pages: items.total_pages,
			total_count: items.total_count
		}}
	end
	def create
		item = Item.new amount: 1
		if item.save
			render json: {resources: item}
		else
			render json: {errors: item.errors}
		end
	end
end
