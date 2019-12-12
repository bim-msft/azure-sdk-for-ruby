# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DeploymentManager::Mgmt::V2019_11_01_preview
  module Models
    #
    # Defines the properties of a health check step.
    #
    class HealthCheckStepProperties < StepProperties

      include MsRestAzure


      def initialize
        @stepType = "HealthCheck"
      end

      attr_accessor :stepType

      # @return [HealthCheckStepAttributes] The health check step attributes
      attr_accessor :attributes


      #
      # Mapper for HealthCheckStepProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HealthCheck',
          type: {
            name: 'Composite',
            class_name: 'HealthCheckStepProperties',
            model_properties: {
              stepType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'stepType',
                type: {
                  name: 'String'
                }
              },
              attributes: {
                client_side_validation: true,
                required: true,
                serialized_name: 'attributes',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'HealthCheckStepAttributes',
                  class_name: 'HealthCheckStepAttributes'
                }
              }
            }
          }
        }
      end
    end
  end
end
