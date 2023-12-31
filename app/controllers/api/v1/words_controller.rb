
module Api
  module V1
    class WordsController < ApplicationController
      before_action :get_word, only:[:show, :update]

      def index
        if params[:limit].present? && params[:offset].present?
          @words = Word.limit(params[:limit]).offset(params[:offset])
        else
          @words = Word.all
        end
        render json: @words
      end

      def show
        render json: @word
        rescue ActiveRecord::RecordNotFound
          render json: {error:"Couldn't find Word"}, state: 422
      end

      def update
        @word.update(status: params[:status])
        render json: @word
      end

      private

      def get_word
        @word = Word.find(params[:id])
      end

    end
  end
end
