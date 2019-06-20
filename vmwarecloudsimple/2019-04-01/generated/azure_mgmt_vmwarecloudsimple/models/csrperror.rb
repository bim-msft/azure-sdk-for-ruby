# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Microsoft.VMwareCloudSimple
  module Models
    #
    # General error model
    #
    class CSRPError

      include MsRestAzure

      # @return [CSRPErrorBody] Error's body
      attr_accessor :error


      #
      # Mapper for CSRPError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CSRPError',
          type: {
            name: 'Composite',
            class_name: 'CSRPError',
            model_properties: {
              error: {
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'CSRPErrorBody'
                }
              }
            }
          }
        }
      end
    end
  end
end
