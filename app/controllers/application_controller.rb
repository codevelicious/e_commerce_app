class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :categories, :brands

  def categories
  	@categories = Category.order(:name)
	end

	def brands
		@brands = Product.pluck(:brand).sort.uniq!
	end


	# before_action :configure_permitted_parameters, if: :devise_controller?

	# protected

	# def configure_permitted_parameters

	# 	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :passowrd_confirmation) }

	# 	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit({ roles: [] }, :email, :password, :passowrd_confirmation) }

end