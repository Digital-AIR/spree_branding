Deface::Override.new(
  virtual_path: 'spree/admin/stores/_form',
  name: 'Add backend url in store settings',
  insert_before: 'erb[loud]:contains("f.field_container :url")',
  text: <<-HTML
    <%= f.field_container :backend_url, class: ['form-group'] do %>
      <%= f.label :backend_url, raw(Spree.t(:dashboard_url) + required_span_tag) %>
      <div class="input-group mb-3">
        <div class="input-group-prepend">
          <span class="input-group-text" id="basic-addon3">https://</span>
        </div>
        <%= f.text_field :backend_url, class: 'form-control' %>
      </div>
      <%= f.error_message_on :backend_url %>
    <% end %>
    HTML
    )

Deface::Override.new(
  virtual_path: 'spree/admin/stores/_form',
  name: 'change url field name in store settings',
  replace: 'erb[loud]:contains("raw(Spree.t(:url)")',
  text: <<-HTML
   <%= f.label :url, raw(Spree.t(:storefront_url) + required_span_tag) %>
    HTML
    )
