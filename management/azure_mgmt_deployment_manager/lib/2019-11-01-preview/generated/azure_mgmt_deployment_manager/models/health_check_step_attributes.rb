# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DeploymentManager::Mgmt::V2019_11_01_preview
  module Models
    #
    # The attributes for the health check step.
    #
    class HealthCheckStepAttributes

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["REST"] = "RestHealthCheckStepAttributes"

      def initialize
        @type = "HealthCheckStepAttributes"
      end

      attr_accessor :type

      # @return [String] The duration in ISO 8601 format for which health check
      # waits idly without any checks.
      attr_accessor :wait_duration

      # @return [String] The duration in ISO 8601 format for which the health
      # check waits for the resource to become healthy. Health check fails if
      # it doesn't. Health check starts to enforce healthyStateDuration once
      # resource becomes healthy.
      attr_accessor :max_elastic_duration

      # @return [String] The duration in ISO 8601 format for which the resource
      # is expected to be continuously healthy. If maxElasticDuration is
      # specified, healthy state duration is enforced after the detection of
      # first healthy signal.
      attr_accessor :healthy_state_duration


      #
      # Mapper for HealthCheckStepAttributes class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HealthCheckStepAttributes',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'type',
            uber_parent: 'HealthCheckStepAttributes',
            class_name: 'HealthCheckStepAttributes',
            model_properties: {
              wait_duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'waitDuration',
                type: {
                  name: 'String'
                }
              },
              max_elastic_duration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'maxElasticDuration',
                type: {
                  name: 'String'
                }
              },
              healthy_state_duration: {
                client_side_validation: true,
                required: true,
                serialized_name: 'healthyStateDuration',
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
