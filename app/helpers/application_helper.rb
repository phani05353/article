module ApplicationHelper
    def gravatar_for(user, options = { size: 80})
        gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
          size = options[:size]
         gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
        image_tag(gravatar_url, alt: user.username, class: "img-circle")
    end
    def devise_error_messages!
        return '' if resource.errors.empty?

       messages = resource.errors.full_messages.map {
      |msg| content_tag(:li, msg) }.join

       html = <<-HTML 
      <div class="alert alert-error alert-danger">
      <a href='#' class="close" data-dismiss='alert' &#215;></a>
      <%= content_tag :div, msg if msg.is_a?(String) %>
      </div>
       HTML

       html.html_safe
  end
end
