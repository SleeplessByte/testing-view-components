# frozen_string_literal: true

class Navigation::Component < ViewComponent::Base
  def initialize(current_page:)
    @current_page = current_page

    super
  end

end
