module DefaultPageContent
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = 'Shownola Portfolio | Sherry Wasieko Portfolio'
    @seo_keywords = ' Sherry Wasieko, Shownola, Shownola Portfolio, Sherry Wasieko Portfolio, Ruby on Rails Developer'
  end

end
