# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DeploymentManager::Mgmt::V2018_09_01_preview
  module Models
    #
    # Detailed runtime information of the rollout.
    #
    class RolloutOperationInfo

      include MsRestAzure

      # @return [Integer] The ordinal count of the number of retry attempts on
      # a rollout. 0 if no retries of the rollout have been performed. If the
      # rollout is updated with a PUT, this count is reset to 0.
      attr_accessor :retry_attempt

      # @return [Boolean] True, if all steps that succeeded on the previous
      # run/attempt were chosen to be skipped in this retry attempt. False,
      # otherwise.
      attr_accessor :skip_succeeded_on_retry

      # @return [DateTime] The start time of the rollout in UTC.
      attr_accessor :start_time

      # @return [DateTime] The start time of the rollout in UTC. This property
      # will not be set if the rollout has not completed yet.
      attr_accessor :end_time

      # @return [CloudErrorBody] The detailed error information for any
      # failure.
      attr_accessor :error


      #
      # Mapper for RolloutOperationInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RolloutOperationInfo',
          type: {
            name: 'Composite',
            class_name: 'RolloutOperationInfo',
            model_properties: {
              retry_attempt: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'retryAttempt',
                type: {
                  name: 'Number'
                }
              },
              skip_succeeded_on_retry: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'skipSucceededOnRetry',
                type: {
                  name: 'Boolean'
                }
              },
              start_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              error: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'CloudErrorBody'
                }
              }
            }
          }
        }
      end
    end
  end
end
