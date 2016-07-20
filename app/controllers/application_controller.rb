class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :categories

  private

  def categories
    @categories ||= Category.all.order(:name)
  end
end
