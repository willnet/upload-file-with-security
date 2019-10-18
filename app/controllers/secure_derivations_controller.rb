class SecureDerivationsController < ApplicationController
  def show
    # model = params[:model_name].constantize.find(params[:id])
    # unless model.owned_by?(current_user)
    #   head 403
    #   return
    # end
    set_rack_response SecureUploader.derivation_response(request.env)
  end

  private

  def set_rack_response((status, headers, body))
    self.status = status
    self.headers.merge!(headers)
    self.response_body = body
  end
end
