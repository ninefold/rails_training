module ApplicationHelper
  def form_group_class(model, attribute)
    model.errors[attribute].any? ? "has-error" : ""
  end

  def error_for(model, attribute)
    model.errors[attribute].join(", ")
  end
end
