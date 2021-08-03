class Example::ComponentPreview < ViewComponent::Preview
  def with_default_title
    render(Example::Component.new(title: 'Example component default'))
  end

  def with_long_title
    render(Example::Component.new(title: 'This is a really long title to see how the component renders this'))
  end

  def with_content_block
    render(Example::Component.new(title: 'This component accepts a block of content')) do
      tag.div do
        content_tag(:span, 'Hello')
      end
    end
  end
end
