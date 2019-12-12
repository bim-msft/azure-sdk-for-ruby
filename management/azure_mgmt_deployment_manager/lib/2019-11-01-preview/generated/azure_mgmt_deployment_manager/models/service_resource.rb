# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DeploymentManager::Mgmt::V2019_11_01_preview
  module Models
    #
    # The resource representation of a service in a service topology.
    #
    class ServiceResource < TrackedResource

      include MsRestAzure

      # @return [String] The Azure location to which the resources in the
      # service belong to or should be deployed to.
      attr_accessor :target_location

      # @return [String] The subscription to which the resources in the service
      # belong to or should be deployed to.
      attr_accessor :target_subscription_id


      #
      # Mapper for ServiceResource class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceResource',
          type: {
            name: 'Composite',
            class_name: 'ServiceResource',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              tags: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              target_location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.targetLocation',
                type: {
                  name: 'String'
                }
              },
              target_subscription_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties.targetSubscriptionId',
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
