module Spree::Admin::UserPasswordsControllerDecorator

  def create
    self.resource = resource_class.send_reset_password_instructions(params[resource_name],current_store)

    if resource.errors.empty?
      set_flash_message(:notice, :send_instructions) if is_navigational_format?
      respond_with resource, location: spree.admin_login_path
    else
      respond_with_navigational(resource) { render :new }
    end
  end

end

Spree::Admin::UserPasswordsController.prepend Spree::Admin::UserPasswordsControllerDecorator