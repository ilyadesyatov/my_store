class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :set_locale

  def rant_params
    params.require(:item).permit(:name, :description, :weight, :price, :real, :image, :image_cache)
  end

  private

    def render_403
      render file: "public/403.html", status: 403
    end

    def render_404
      render file: "public/404.html", status: 404
    end

    def check_if_admin
      render_403 unless params[:admin]
    end

    def set_locale
      I18n.locale = params[:locale] || I18n.default_locale
    end

end
