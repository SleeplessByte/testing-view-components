class PagesController < ApplicationController
  def home
    add_page_packs 'home'
    # no-op
  end

  def about
    add_page_packs 'application'

    # Don't use this before Rails 6.1
    # render Example::Component.new(title: 'my test title') { 'Hello' }
  end
end
