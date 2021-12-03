Deface::Override.new(
  virtual_path: 'spree/admin/products/new',
  name: 'Replace shipping category field',
  replace: 'div[data-hook="new_product_shipping_category"]',
  text: <<-HTML
      <div data-hook="new_product_shipping_category" class="col-12 col-md-4">
        <%= f.field_container :shipping_category do %>
          <%= f.label :shipping_category_id, Spree.t(:shipping_categories) %><span class="required">*</span>
          <%= f.collection_select(:shipping_category_id, @shipping_categories, :id, :name, { include_blank: Spree.t('match_choices.none') }, { class: 'select2 h-100',required: true}) %>
          <%= f.error_message_on :shipping_category %>
        <% end %>
      </div>
    HTML
    )
