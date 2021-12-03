module Spree
  module SpreeBranding
    module Products
      module FindDecorator
        def initialize(scope:, params:, current_currency: nil)
          super

          @product_name = params.dig(:filter, :searchkick)
        end

        def execute
          products = by_product_name(super)
          products.distinct
        end

        private

        attr_reader :product_name

        def product_name?
          product_name.present?
        end

        def by_product_name(products)
          return products unless product_name?
          taxons = Spree::Taxon.autocomplete(product_name)
          taxon_ids = Spree::Taxon.where(name: taxons).select("id")
          first_products_list = Spree::Product.joins(:classifications).where(Classification.table_name => { taxon_id: taxon_ids }).select("name")      
          second_products_list = Spree::Product.autocomplete(product_name)
          products_list = first_products_list + second_products_list
          products.where(name: products_list)
        end

      end
    end
  end
end

::Spree::Products::Find.prepend(Spree::SpreeBranding::Products::FindDecorator)
