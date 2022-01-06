Deface::Override.new(
  virtual_path: 'spree/admin/products/_form',
  name: 'Replace product dimension weight field in product form',
  replace: 'erb[loud]:contains("f.text_field :weight")',
  text: <<-HTML
		<%= f.text_field :weight, value: number_with_precision(@product.weight, precision: 2), size: 4, class: 'form-control', required: :required %>
    HTML
    )

Deface::Override.new(
  virtual_path: 'spree/admin/products/_form',
  name: 'Replace product dimension height field in product form',
  replace: 'erb[loud]:contains("f.text_field :height")',
  text: <<-HTML
  		<%= f.text_field :height, value: number_with_precision(@product.height, precision: 2), size: 4, class: 'form-control', required: :required %>
    HTML
    )

Deface::Override.new(
  virtual_path: 'spree/admin/products/_form',
  name: 'Replace product dimension width field in product form',
  replace: 'erb[loud]:contains("f.text_field :width")',
  text: <<-HTML
  		<%= f.text_field :width, value: number_with_precision(@product.width, precision: 2), size: 4, class: 'form-control', required: :required %>
    HTML
    )

Deface::Override.new(
  virtual_path: 'spree/admin/products/_form',
  name: 'Replace product dimension depth field in product form',
  replace: 'erb[loud]:contains("f.text_field :depth")',
  text: <<-HTML
  		<%= f.text_field :depth, value: number_with_precision(@product.depth, precision: 2), size: 4, class: 'form-control', required: :required %>
    HTML
    )

Deface::Override.new(
  virtual_path: 'spree/admin/products/new',
  name: 'Add product dimension fields in new product form',
  insert_after: 'div[data-hook="new_product_vendor"]',
  text: <<-HTML
          <div class="col-12 col-md-4">
            <div id="shipping_specs_depth_field" data-hook="admin_product_form_depth" class="form-group">
              <%= f.label :depth, Spree.t(:depth) %>
              <%= f.text_field :depth, value: number_with_precision(@product.depth, precision: 2), size: 4, class: 'form-control', required: :required %>
            </div>
          </div>

          <div class="col-12 col-md-4">
            <div id="shipping_specs_height_field" data-hook="admin_product_form_height" class="form-group">
              <%= f.label :height, Spree.t(:height) %>
              <%= f.text_field :height, value: number_with_precision(@product.height, precision: 2), size: 4, class: 'form-control', required: :required %>
            </div>
          </div>

          <div class="col-12 col-md-4">
            <div id="shipping_specs_width_field" data-hook="admin_product_form_width" class="form-group">
              <%= f.label :width, Spree.t(:width) %>
              <%= f.text_field :width, value: number_with_precision(@product.width, precision: 2), size: 4, class: 'form-control', required: :required %>
            </div>
          </div>

          <div class="col-12 col-md-4">
            <div id="shipping_specs_weight_field" data-hook="admin_product_form_weight" class="form-group">
              <%= f.label :weight, Spree.t(:weight) %>
              <%= f.text_field :weight, value: number_with_precision(@product.weight, precision: 2), size: 4, class: 'form-control', required: :required, required: :required %>
            </div>
          </div>

    HTML
    )