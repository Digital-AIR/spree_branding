Deface::Override.new(
  virtual_path: 'spree/shared/_base_mailer_header',
  name: 'Replace logo in email.',
  replace: 'erb[loud]:contains("image_tag")',
  text: <<-HTML
	  <%= image_tag "logo/wildfire_logo.png", class: 'logo', alt: current_store.name, title: current_store.name %>
    HTML
    )
