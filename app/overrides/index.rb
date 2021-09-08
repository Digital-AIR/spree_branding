Deface::Override.new(
  virtual_path: 'spree/admin/tax_rates/index',
  name: 'Remove Spree from Tax Rates index.',
  replace: 'erb[loud]:contains("tax_rate.calculator.to_s")',
  text: <<-HTML
        <%= tax_rate.calculator.to_s.remove("Spree/") %>
    HTML
    )

