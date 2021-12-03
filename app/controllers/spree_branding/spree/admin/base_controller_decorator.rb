module SpreeBranding::Spree::Admin::BaseControllerDecorator

  def self.prepended(base)
    base.helper_method :taxon_options
  end

  def taxon_options
    @taxon_options ||= Spree::Taxon.pluck(:name)
  end


end

Spree::Admin::BaseController.prepend SpreeBranding::Spree::Admin::BaseControllerDecorator