require "action_view/template"
ActionView::Template.register_template_handler :rb, :source.to_proc

ActionView::Template.register_template_handler :string,
  lambda { |template| "%Q{#{template.source}}" }

require "rdiscount"
ActionView::Template.register_template_handler :md, 
	lambda { |template| "RDiscount.new(#{template.source.inspect}).to_html" }

module Handlers
end