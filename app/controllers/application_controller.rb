class ApplicationController < ActionController::API
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found_message
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_message

    private
    def render_record_not_found_message(exception)
        render json: {error: "#{exception.model} not found."}, status: :not_found
    end

    def render_unprocessable_entity_message(exception)
        render json: {errors: exception.record.errors.full_messages}, status: :unprocessable_entity
    end
end
