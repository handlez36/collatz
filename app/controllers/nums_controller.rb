class NumsController < ApplicationController
    before_action :num_params, only: :create

    def index
        @num = Num.new
    end

    def new
    end

    def create
        @num = Num.create num_params
        if @num.save
            render :show
        end
    end

    private

    def num_params
        puts "Params are #{params}"
        params.require(:num).permit(:number)
    end
end
