# frozen_string_literal: true

class Example::Component < ViewComponent::Base
  def initialize(title:)
    @title = title

    super
  end
end
