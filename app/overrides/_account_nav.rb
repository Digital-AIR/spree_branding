Deface::Override.new(virtual_path: 'spree/admin/shared/_account_nav',
  name: 'Remove menu items from drop down',
  replace: "div.dropdown-menu",
  text: <<-HTML
    <div class="dropdown-menu dropdown-menu-right overflow-hidden mt-2 p-0 mr-2">
      <div class="dropdown-item px-0 text-center bg-light">
        <span class="d-block text-dark py-2 px-4"><%= try_spree_current_user.email %></span>
      </div>
      <div class="dropdown-divider m-0"></div>

      <% if spree.respond_to? :root_path %>
          <%= link_to spree.root_path, target: :blank, class: 'd-block text-dark py-3 px-4 dropdown-item' do %>
            <%= svg_icon name: "store.svg", width: '18', height: '18' %>
            &nbsp;
            <%= Spree.t(:back_to_store) %>
          <% end %>
      <% end %>
      <% if can?(:manage, try_spree_current_user) %>
          <%= link_to spree.edit_admin_user_path(try_spree_current_user), class: 'd-block text-dark py-3 px-4 dropdown-item' do %>
            <%= svg_icon name: "user.svg", width: '18', height: '18' %>
            &nbsp;
            <%= Spree.t(:account) %>
          <% end %>
      <% end %>
      <% if admin_logout_link %>
          <%= link_to admin_logout_link, class: 'd-block text-dark py-3 px-4 dropdown-item' do %>
            <%= svg_icon name: "exit.svg", width: '18', height: '18' %>
            &nbsp;
            <%= Spree.t(:logout) %>
          <% end %>
      <% end %>
    </div>
    HTML
  )