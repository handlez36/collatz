class IndexController < ApplicationController
    before_action :num_params

    def index
        @num = Num.create
    end

    def new
    end

    def create
    end

    private

    def num_params
        puts "In num #{params}"

        # params.require(:num).permit(:number)
    end
end
