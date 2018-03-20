# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2016_10_10
  module Models
    #
    # Authorization header information.
    #
    class BackendAuthorizationHeaderCredentials

      include MsRestAzure

      # @return [String] Authentication Scheme name.
      attr_accessor :scheme

      # @return [String] Authentication Parameter value.
      attr_accessor :parameter


      #
      # Mapper for BackendAuthorizationHeaderCredentials class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackendAuthorizationHeaderCredentials',
          type: {
            name: 'Composite',
            class_name: 'BackendAuthorizationHeaderCredentials',
            model_properties: {
              scheme: {
                client_side_validation: true,
                required: true,
                serialized_name: 'scheme',
                constraints: {
                  MaxLength: 100,
                  MinLength: 1
                },
                type: {
                  name: 'String'
                }
              },
              parameter: {
                client_side_validation: true,
                required: true,
                serialized_name: 'parameter',
                constraints: {
                  MaxLength: 300,
                  MinLength: 1
                },
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