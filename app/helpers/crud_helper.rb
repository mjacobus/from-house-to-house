module CrudHelper
  def confirm_destruction
    @confirm_desctruction ||= t('.confirm_destroy', default: t('system.view.links.confirm_destroy'))
  end

  def destroy_label
    crud_link_label(:destroy)
  end

  def edit_label
    crud_link_label(:edit)
  end

  def show_label
    crud_link_label(:show)
  end

  def new_label
    crud_link_label(:new)
  end

  def back_label
    crud_link_label(:back)
  end

  def save_label
    crud_link_label(:save)
  end

  def crud_link_label(type)
    t(".#{type}", default: t("system.view.links.#{type}"))
  end
end
