# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::EventGrid::V2018_01_01
  module Models
    #
    # Job processing event data
    #
    class MediaJobProcessingEventData < MediaJobStateChangeEventData

      include MsRestAzure


      #
      # Mapper for MediaJobProcessingEventData class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: '#Microsoft.Media.JobProcessing',
          type: {
            name: 'Composite',
            class_name: 'MediaJobProcessingEventData',
            model_properties: {
              previous_state: {
                required: false,
                read_only: true,
                serialized_name: 'previousState',
                type: {
                  name: 'Enum',
                  module: 'MediaJobState'
                }
              },
              state: {
                required: false,
                read_only: true,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'MediaJobState'
                }
              },
              correlation_data: {
                required: false,
                serialized_name: 'correlationData',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
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