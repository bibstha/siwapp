module ApplicationHelper
  def title(*parts)
    unless parts.empty?
      content_for :title do
        (parts << "Siwapp").join(" - ")
      end
    end
  end

  # To put class=active into the menu links
  def active_link(link)
    (link == params[:controller]) ? "active" : ""
  end

  def current_type
    controller_name.classify
  end

  def current_type_name
    current_type.constantize.model_name.human
  end
end
