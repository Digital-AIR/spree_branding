module Spree
  module Api
    module Products
      module FiltersPresenterDecorator

      def to_h
        option_values = Spree::OptionValues::FindAvailable.new(products_scope: products_for_filters).execute
        option_values_presenters = Spree::Filters::OptionsPresenter.new(option_values_scope: option_values).to_a
        product_properties = Spree::ProductProperties::FindAvailable.new(products_scope: products_for_filters).execute
        product_properties_presenters = Spree::Filters::PropertiesPresenter.new(product_properties_scope: product_properties).to_a
        vendors = Spree::Vendor.where(state: 'active').all.select("id, name")
        taxons = Spree::Taxon.all.select("id, name")
        prototypes = Spree::Prototype.all.select("id, name")


        {
          option_types: option_values_presenters.map(&:to_h),
          product_properties: product_properties_presenters.map(&:to_h),
          vendors: vendors,
          taxons: taxons,
          prototypes: prototypes
        }
      end

      Spree::Api::Products::FiltersPresenter.prepend Spree::Api::Products::FiltersPresenterDecorator
      end
    end
  end
end
