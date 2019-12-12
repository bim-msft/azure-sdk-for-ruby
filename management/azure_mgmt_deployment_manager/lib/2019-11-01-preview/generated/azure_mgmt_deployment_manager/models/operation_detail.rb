# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DeploymentManager::Mgmt::V2019_11_01_preview
  module Models
    #
    # The detail about an operation.
    #
    class OperationDetail

      include MsRestAzure

      # @return [String] The name of the provider that supports the operation.
      attr_accessor :provider

      # @return [String] The resource type on which this operation can be
      # performed.
      attr_accessor :resource

      # @return [String] The name of the operation.
      attr_accessor :operation

      # @return [String] The description of the operation.
      attr_accessor :description


      #
      # Mapper for OperationDetail class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'OperationDetail',
          type: {
            name: 'Composite',
            class_name: 'OperationDetail',
            model_properties: {
              provider: {
                client_side_validation: true,
                required: false,
                serialized_name: 'provider',
                type: {
                  name: 'String'
                }
              },
              resource: {
                client_side_validation: true,
                required: false,
                serialized_name: 'resource',
                type: {
                  name: 'String'
                }
              },
              operation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'operation',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
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
