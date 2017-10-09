# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServiceFabric
  module Models
    #
    # The error detail
    #
    class ErrorModelError

      include MsRestAzure

      # @return [String] The error code
      attr_accessor :code

      # @return [String] The error message
      attr_accessor :message


      #
      # Mapper for ErrorModelError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ErrorModel_error',
          type: {
            name: 'Composite',
            class_name: 'ErrorModelError',
            model_properties: {
              code: {
                required: false,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end