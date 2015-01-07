class SwitchBooleanInput < SimpleForm::Inputs::BooleanInput
  def input(wrapper_options)
    template.content_tag(:br, super)
  end

  def input_html_classes
    super.push('switch-boolean')
  end

end
