class <%= class_name %>Controller < ApplicationController
    def index
       @<%= plural_name %> = <%= class_name %>.all
      if @<%= plural_name %>
        render json: {:<%= plural_name %> => @<%= plural_name %>}
      else
        render json: {:errors => 'No <%= plural_name %> found'}, :status => 404
      end
    end

    def show
      @<%= plural_name %> = <%= class_name %>.find(params[:id])
      render json: {:<%= plural_name %> => @<%= plural_name %>}
    end

    def create
      @<%= plural_name %> = <%= class_name %>.create(<%= class_name.downcase %>_params)
      if @<%= plural_name %>.save
        render json: {:<%= plural_name %> => @<%= plural_name %>}
      else
        render :json => { :errors => @<%= plural_name %>.errors.full_messages }, :status => 422
      end
    end

    def update
      @<%= plural_name %> = <%= class_name %>.find(params[:id])
      if @<%= plural_name %>.update!(<%= class_name.downcase %>_params)
        render json: {:<%= plural_name %> => @<%= plural_name %>}
      else
        render :json => { :errors => @<%= plural_name %>.errors.full_messages }, :status => 422
      end
    end

   def destroy
      @<%= plural_name %> = <%= class_name %>.find(params[:id])
        if @<%= plural_name %>.destroy!
          render json: {:<%= plural_name %> => @<%= plural_name %>}
        else
          render :json => { :errors => @<%= plural_name %>.errors.full_messages }, :status => 422
        end
      else
        render :json => { :errors => @<%= plural_name %>.errors.full_messages }, :status => 422
      end
    end

    protected

    def <%= class_name.downcase %>_params
      # add your column list here
      params.require(:<%= class_name.downcase %>).permit(
      )
    end
end
