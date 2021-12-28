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