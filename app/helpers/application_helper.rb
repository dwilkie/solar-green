module ApplicationHelper
  def page_title
    t page_title_translation_key,
      page_title_context.merge(:default => :"title.default")
  end

  def page_title_translation_key
    :"title.#{controller_name}.#{action_name}"
  end

  def page_title_context
    controller.view_assigns.symbolize_keys
  end
end
