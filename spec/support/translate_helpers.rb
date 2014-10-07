module TranslateHelpers
  def translate(*args)
    options = args.extract_options!
    I18n.t!(args.join("."), options)
  end
end
