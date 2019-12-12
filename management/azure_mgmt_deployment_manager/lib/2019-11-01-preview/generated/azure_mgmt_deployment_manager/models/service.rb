# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DeploymentManager::Mgmt::V2019_11_01_preview
  module Models
    #
    # Defines a service.
    #
    class Service < ServiceProperties

      include MsRestAzure

      # @return [String] Name of the service.
      attr_accessor :name

      # @return [Array<ServiceUnit>] The detailed information about the units
      # that make up the service.
      attr_accessor :service_units


      #
      # Mapper for Service class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Service',
          type: {
            name: 'Composite',
            class_name: 'Service',
            model_properties: {
              target_location: {
                client_side_validation: true,
                required: true,
                serialized_name: 'targetLocation',
                type: {
                  name: 'String'
                }
              },
              target_subscription_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'targetSubscriptionId',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              service_units: {
                client_side_validation: true,
                required: false,
                serialized_name: 'serviceUnits',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ServiceUnitElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ServiceUnit'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
