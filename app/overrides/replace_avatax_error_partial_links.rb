Deface::Override.new(
  virtual_path: 'spree/admin/avalara_entity_use_codes/new',
  name: 'Replace error partial path in avalara_entity_use_codes new',
  replace: 'erb[loud]:contains("spree/shared/error_messages")',
  text: <<-HTML
        <%= render 'spree/admin/shared/error_messages', target: @use_code %>
    HTML
    )


Deface::Override.new(
  virtual_path: 'spree/admin/avalara_entity_use_codes/edit',
  name: 'Replace error partial path in avalara_entity_use_codes edit',
  replace: 'erb[loud]:contains("spree/shared/error_messages")',
  text: <<-HTML
        <%= render 'spree/admin/shared/error_messages', target: @use_code %>
    HTML
    )


Deface::Override.new(
  virtual_path: 'spree/admin/users/avalara_information',
  name: 'Replace error partial path in users avalara_information',
  replace: 'erb[loud]:contains("spree/shared/error_messages")',
  text: <<-HTML
        <%= render partial: 'spree/admin/shared/error_messages', locals: { target: @user } %>
    HTML
    )