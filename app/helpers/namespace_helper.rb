module NamespaceHelper
  def namespace
    @ns ||= params[:controller].split('/').first.to_sym
  end

  def admin_namespace?
    namespace == :admin
  end

  def publisher_namespace?
    namespace == :publisher
  end
end
