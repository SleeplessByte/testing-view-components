class Navigation::ComponentPreview < ViewComponent::Preview
  def default
    render(Navigation::Component.new)
  end
end
