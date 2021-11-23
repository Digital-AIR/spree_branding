Deface::Override.new(
  virtual_path: 'spree/admin/user_passwords/edit',
  name: 'Replace error partial path in edit.',
  replace: 'erb[loud]:contains("spree/shared/error_messages")',
  text: <<-HTML
        <%= render :partial => 'spree/admin/shared/error_messages', :locals => { :target => @spree_user } %>
    HTML
    )

Deface::Override.new(
  virtual_path: 'spree/admin/user_passwords/new',
  name: 'Replace error partial path in new.',
  replace: 'erb[loud]:contains("spree/shared/error_messages")',
  text: <<-HTML
        <%= render :partial => 'spree/admin/shared/error_messages', :locals => { :target => @spree_user } %>
    HTML
    )

