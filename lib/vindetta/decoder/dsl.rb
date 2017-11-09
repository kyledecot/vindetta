module Vindetta
  class Decoder
    module DSL
      def decoded_attributes
        @decoded_attributes ||= []
      end

      def has_value(name, variable_id, options = {})
        decoded_attributes << name

        define_method name do
          value = value_for(variable_id)

          case options[:type]
          when :int then value&.to_i
          else
            value
          end
        end
      end

      def self.extended(mod)
        mod.instance_eval do
          define_method :value_for do |variable_id|
            result = @variables.find { |r| r["VariableId"] == variable_id }
            return unless result

            result["Value"]
          end
        end
      end
    end
  end
end
