class ApplicationController < ActionController::Base
  include ManageableContent::Controllers::Dsl
  protect_from_forgery

  manageable_content_for :title
end
