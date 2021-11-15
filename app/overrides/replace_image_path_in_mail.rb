Deface::Override.new(
  virtual_path: 'spree/shared/purchased_items_table/_line_item',
  name: 'Replace product image path',
  replace: 'td.purchase_image',
  text: <<-HTML
        <td class="purchase_image">
		   <%= image_tag(variant_image_url(line_item.variant).gsub(current_store.url.to_s, current_store.backend_url.to_s)) %>
		</td>
    HTML
    )


Deface::Override.new(
  virtual_path: 'spree/shared/_base_mailer_header',
  name: 'Replace logo path',
  replace: 'td.email-masthead',
  text: <<-HTML
         <td class="email-masthead">
    <%= link_to current_store.url, class: 'template-label' do %>
      <%= image_tag logo_path.gsub(current_store.url.to_s, current_store.backend_url.to_s), class: 'logo', alt: current_store.name, title: current_store.name %>
    <% end %>
  </td>
    HTML
    )

