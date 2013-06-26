class HomeController < ApplicationController
  
  # use layout 'login', because 'application' need current_user filled
  layout 'home'
  skip_before_filter :login_required
  before_filter :login_optional
  before_filter :get_current_user
  
  def index
    if logged_in?
      redirect_to :controller => 'todos', :action => 'index'
    end
    @page_title = t('home.page_title')
  end
end
