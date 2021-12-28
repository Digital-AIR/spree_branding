Deface::Override.new(
  virtual_path: 'spree/admin/variants/_form',
  name: 'Replace product dimension fields in product variant form',
  replace: 'erb[loud]:contains("f.text_field field")',
  text: <<-HTML
		<%= f.text_field field, value: value, class: 'form-control', required: :required %>
    HTML
    )
