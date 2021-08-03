class ApplicationController < ActionController::Base
  helper_method :page_packs

  protected

  attr_accessor :page_packs

  def add_page_pack(pack)
    @page_packs ||= []

    @page_packs << pack
  end

  def add_page_packs(*packs)
    packs.each { |pack| add_page_pack(pack) }
  end
end
