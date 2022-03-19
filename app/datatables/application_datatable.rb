class ApplicationDatatable < AjaxDatatablesRails::ActiveRecord
  extend Forwardable

  def_delegators :@view, :link_to, :can?

  def initialize(params, opts = {})
    @view = opts[:view_context]
    super
  end

  def acciones(record)
    acciones = []
    acciones << link_to('Ver', record) if can?(:show, record)
    acciones << link_to('Editar', [:edit, record]) if can?(:edit, record)
    acciones << link_to('Eliminar', record, method: :delete, data: { confirm: 'Seguro que desea eliminar?' }) if can?(:destroy, record)
    return acciones
  end
end
