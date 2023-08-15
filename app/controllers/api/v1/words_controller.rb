
module Api
  module V1
    class WordsController < ApplicationController
      def index
        if params[:limit].present? && params[:offset].present?
          @words = Word.limit(params[:limit]).offset(params[:offset])
        else
          @words = Word.all
        end
        render json: @words
      end

      def show
        @word = Word.find(params[:id])
        render json: @word
        rescue ActiveRecord::RecordNotFound
          render json: {error:"Couldn't find Word"}, state: 422
      end
    end
  end
end
