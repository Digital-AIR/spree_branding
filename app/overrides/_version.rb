Deface::Override.new(
  virtual_path: 'spree/admin/shared/_version',
  name: 'Change poweredby footer',
  replace: 'small',
  text: <<-HTML
        <small
		  class="font-weight-bold ml-3 my-3 text-muted">
		  powered by <%= svg_icon name: "bizio_commerce_logo.svg", width: '120', height: '25' %>
		</small>
    HTML
    )

