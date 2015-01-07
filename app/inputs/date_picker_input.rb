class DatePickerInput < SimpleForm::Inputs::StringInput
  def input_html_classes
    super.push('date-picker')
  end

  def type
    'string'
  end

end
