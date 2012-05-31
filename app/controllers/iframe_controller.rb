class IframeController < ApplicationController
  def index
    if params[:url]
      redirect_to "/#{CGI.escape(params[:url])}"
    end
  end

  def show
    @url = params[:url]
  end
end
