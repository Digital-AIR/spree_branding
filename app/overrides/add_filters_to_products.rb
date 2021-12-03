Deface::Override.new(
  virtual_path: 'spree/admin/products/index',
  name: 'Add filters in product index',
  insert_top: 'div[data-hook="admin_products_index_search"]',
  text: <<-HTML
  		<% if current_spree_user.respond_to?(:has_spree_role?) && current_spree_user.has_spree_role?(:admin) %>
  		<div class="col-12 col-lg-6">
          <div class="form-group">
            <%= f.label :vendor_name_cont, Spree.t(:vendor_name) %>
            <%= f.text_field :vendor_name_cont, size: 15, class: "form-control js-filterable" %>
          </div>
        </div>
        <% end %>
        <div class="col-12 col-lg-6">
          <div class="form-group">
            <%= f.label :taxons_name_in, Spree.t(:taxon) %>
            <%= f.select :taxons_name_in, options_for_select(taxon_options), { multiple: 'please select' }, class: 'select2', multiple: true %>
          </div>
        </div>

    HTML
    )