class ApplicationController < ActionController::Base
  protect_from_forgery with: :execption
  include SessionsHelper
end
