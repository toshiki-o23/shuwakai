class ApplicationController < ActionController::Base
  # ログインしてない場合非表示
  before_action :authenticate_user!
end
