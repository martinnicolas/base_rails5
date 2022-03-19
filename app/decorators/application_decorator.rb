class ApplicationDecorator < Draper::Decorator
  def dt_actions(acciones)
    if acciones.blank?
      return ''
    end

    acciones_como_string = acciones.map { |accion| "<li role='presentation'>#{accion}</li>" }.join
    result = <<-HTML
      <div class="dropdown">
        <button class="btn btn-sm btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
          Acciones <span class="caret"></span>
        </button>
        <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">#{acciones_como_string}</ul>
      </div>
    HTML
    return result.html_safe
  end

  def booleano(boolean)
    if boolean === true
      return 'Si'
    elsif boolean === false
      return 'No'
    end

    return nil
  end

  def contador(numero, title = '')
    h.content_tag(:span, numero, class: 'badge', title: title)
  end

  def get_created_at
    object.created_at
  end

  def get_updated_at
    object.updated_at
  end
end
