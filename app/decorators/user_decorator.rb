class UserDecorator < ApplicationDecorator

  def to_s
    h.link_to name, h.user_path(object)
  end
end
