module ActiveModel
  class Errors
    def full_messages
      full_messages = []

      each do |error|
        attribute = error.attribute
        message = error.message
        next if message.empty?

        if attribute == :base
          full_messages << message
        else
          attr_name = attribute.to_s.gsub('.', '_').humanize
          attr_name = @base.class.human_attribute_name(attribute, :default => attr_name)
          options = { :default => "%{attribute} %{message}", :attribute => attr_name }

          if message =~ /^\^/
            full_messages << I18n.t(:"errors.format.full_message", **options.merge(:message => message[1..-1], :default => "%{message}"))
          else
            full_messages << I18n.t(:"errors.format", **options.merge(:message => message))
          end
        end
      end

      full_messages
    end
  end
end
