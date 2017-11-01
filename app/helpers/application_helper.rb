module ApplicationHelper
	
  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end
  
  def link_to_add_fields(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s.singularize + "_fields", :f => builder)
    end
    link_to(name, "#", "data-association" => "#{association}" , "data-content" => "#{fields}", :class => "link_to_add_fields" )
  end
  
  def get_links(category)
	Cms::Page.where(:category => category)
  end
    
  def page_link(page, text=nil)
	text = text != nil ? text : page.title  
  	if page.page_type == "Template" || page.page_type == "Document"
  		link_to text, "/pages/show/#{page.id}"
  	elsif page.page_type == "Internal Link" || page.page_type == "Fixed Layout"
  		link_to text, "#{page.internal_url}"
  	elsif page.page_type == "External Link"
  	  	link_to text, +page.external_url, :target => "_blank"
  	end	  	  
  end
  
  def has_photo?(photo)
	 photo != "/photos/original/missing.png" 
  end
  
end
