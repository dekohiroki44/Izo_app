module ApplicationHelper
  def full_title(page_title)
    base_title = "Izo Official Web Site"
    if page_title.blank?
      base_title
    else
      "#{page_title} - #{base_title}"
    end
  end
end
