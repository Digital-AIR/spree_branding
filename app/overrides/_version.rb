Deface::Override.new(
  virtual_path: 'spree/admin/shared/_version',
  name: 'Change condition.',
  replace: 'erb[silent]:contains("if can?(:admin, current_store) && Spree::Config[:admin_show_version]")',
  text: <<-HTML
       <% if try_spree_current_user.has_spree_role?(:admin) || try_spree_current_user.vendors.any? %>
    HTML
  )

Deface::Override.new(
  virtual_path: 'spree/admin/shared/_version',
  name: 'Add poweredby footer.',
  replace: 'small',
  text: <<-HTML
        <small
      class="font-weight-bold ml-3 my-3 text-muted">
      powered by <%= svg_icon name: "bizio_commerce_logo.svg", width: '120', height: '25' %>
    </small>
    HTML
  )
