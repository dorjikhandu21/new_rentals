# frozen_string_literal: true

class GraphqlController < BaseController
  include GraphqlHelpers
  # If accessing from outside this domain, nullify the session
  # This allows for outside API access while preventing CSRF attacks,
  # but you'll have to authenticate your user separately
  # protect_from_forgery with: :null_session

  def execute
    result = NewRentalsSchema.execute(
      query,
      variables:,
      context:,
      operation_name:
    )

    render json: result
  end
end
