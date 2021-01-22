class WebhooksController < ApplicationController
  skip_before_action :verify_authenticity_token

  def post
    system("notify-send 'NFSe " + params["ref"] + "' 'Status: " + params["status"] + "'")
  end

end
