module ApplicationHelper

# returns the full title on a per-page title
  def full_title(page_title = '')
    base_title = "Ruby on rails tutorial Sample App"
    if page_title.empty?
      base_title
    else
      page_title + " | " + base_title
    end

  end
end
