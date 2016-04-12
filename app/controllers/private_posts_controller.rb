class PrivatePostsController < ApplicationController
  include JSONAPI::ActsAsResourceController
  before_action :authenticate
end
