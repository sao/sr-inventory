module FormHelper
  def errors_for(object, message = nil)
    if object.errors.any?
      object_name   = object.class.name.demodulize.titleize.downcase
      object_action = object.new_record? ? "create" : "update"
      message     ||= "Sorry, could not #{object_action} the #{object_name}."

      errors = object.errors.full_messages.collect do |error|
        "<li>#{error}</li>".html_safe
      end

      markup = <<-ALERT
        <div class="alert alert-danger errors_for #{object_name}">
          <button type="button" class="close" data-dismiss="alert">&times;</button>
          <h5>#{message}</h5>
          <ul>
            #{errors.join("\n")}
          </ul>
        </div>
      ALERT

      markup.html_safe
    end
  end
end
