Deface::Override.new(
  virtual_path: 'spree/admin/user_passwords/new',
  name: 'Replace post link of admin forget password.',
  replace: 'erb[loud]:contains("reset_password_path")',
  text: <<-HTML
        <%= form_for Spree.user_class.new, :as => :spree_user, :url => spree.admin_reset_password_path do |f| %>
    HTML
    )
