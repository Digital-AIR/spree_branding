Deface::Override.new(
  virtual_path: 'spree/admin/shared/_head',
  name: 'Change Title',
  replace: 'erb[loud]:contains("administration")',
  text: <<-HTML
        <%= "Wildfire+:" %>
    HTML
    )
