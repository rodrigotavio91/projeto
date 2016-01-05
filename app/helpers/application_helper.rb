module ApplicationHelper
  def nav_link(link_text, link_path, controller_name)
	if (controller.controller_name == controller_name)
	  class_name = 'active'
	else
	  class_name = ''
	end

	content_tag(:li, :class => class_name) do
	  link_to link_text, link_path
	end
  end
end
