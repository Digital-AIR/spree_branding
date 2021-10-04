Deface::Override.new(
  virtual_path: 'spree/layouts/admin',
  name: 'Add poweredby footer.',
  insert_bottom: 'aside',
  text: <<-HTML
        <small
      class="font-weight-bold ml-3 my-3 text-muted">
      powered by <%= svg_icon name: "bizio-commerce-footer-logo.svg", width: '120', height: '25' %>
    </small>
    HTML
  )