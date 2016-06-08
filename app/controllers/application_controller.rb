class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def triple
    @subject        = Subject  .at_random
    @modus_operandi = MO       .at_random
    @reaction       = Reaction .at_random
  end
end
