Deface::Override.new(
  virtual_path: 'spree/admin/shared/_store_switcher',
  name: 'Show navbar logo and store name to vendors.',
  insert_before: 'erb[silent]:contains("if can?(:admin, current_store)")',
  text: <<-HTML
      <% if cannot?(:admin, current_store)%>
          <span class="d-none d-lg-inline text-light">
            <%= svg_icon name: "bizio-commerce-navbar-logo.svg", width: '35', height: '35' %>
          </span>

           <span class="d-sm-none"><%= svg_icon name: "store.svg", width: '18', height: '18' %></span>
           <span class="d-none d-sm-inline text-light"><%= current_store.name %>(<%= current_store.code %>)</span> 
      <% end %>
    HTML
  )

Deface::Override.new(
  virtual_path: 'spree/admin/shared/_store_switcher',
  name: 'Replace navbar logo.',
  replace: 'erb[loud]:contains("spree-icon.svg")',
  text: <<-HTML
        <%= svg_icon name: "bizio-commerce-navbar-logo.svg", width: '35', height: '35' %>
    HTML
  )
