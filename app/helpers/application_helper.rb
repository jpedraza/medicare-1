module ApplicationHelper
  def sortable(column, title = nil)
    title ||= column.titleize
    column = column.to_s
    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
    flag = (column == sort_column) ? content_tag(:i, '', :class => (direction == 'asc' ? 'icon-chevron-up' : 'icon-chevron-down')) : ''
    link_to(title, {:sort => column, :direction => direction, :page => params[:page], :search => params[:search]}) + ' ' + flag
    
  end	 
end
