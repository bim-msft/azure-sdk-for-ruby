# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::QnamakerRuntime::V4_0
  module Models
    #
    # Active learning feedback records.
    #
    class FeedbackRecordsDTO

      include MsRestAzure

      # @return [Array<FeedbackRecordDTO>] List of feedback records.
      attr_accessor :feedback_records


      #
      # Mapper for FeedbackRecordsDTO class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'FeedbackRecordsDTO',
          type: {
            name: 'Composite',
            class_name: 'FeedbackRecordsDTO',
            model_properties: {
              feedback_records: {
                client_side_validation: true,
                required: false,
                serialized_name: 'feedbackRecords',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'FeedbackRecordDTOElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'FeedbackRecordDTO'
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
