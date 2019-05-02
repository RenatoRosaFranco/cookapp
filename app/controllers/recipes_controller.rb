# frozen_string_literal: true
class RecipesController < ApplicationController
	before_action :set_recipe, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, only: [:new, :create, :update, :destroy]

	def index
		@recipes = Recipe.all
		respond_with(@recipes)
	end

	def new
		@recipe = current_user.recipes.build
		respond_with(@recipe)
	end

	def show
		respond_with(@recipe)
	end

	def edit
		respond_with(@recipe)
	end

	def update
		@recipe.update(recipe_params)
		respond_with(@recipe)
	end

	def destroy
		@recipe.destroy
		redirect_to recipes_path, notice: 'Receita removida com sucesso.'
	end

	private

	def recipe_params
		params.require(:recipe)
			.permit(:thumbnail, :title, :ingredients, :instructions, :allow_comments, :status, :category_id)
	end
end