# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Qnamaker::V4_0
  module Models
    #
    # Post body schema for Replace KB operation.
    #
    class ReplaceKbDTO

      include MsRestAzure

      # @return [Array<QnADTO>] List of Q-A (QnADTO) to be added to the
      # knowledgebase. Q-A Ids are assigned by the service and should be
      # omitted.
      attr_accessor :qn_alist


      #
      # Mapper for ReplaceKbDTO class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ReplaceKbDTO',
          type: {
            name: 'Composite',
            class_name: 'ReplaceKbDTO',
            model_properties: {
              qn_alist: {
                client_side_validation: true,
                required: true,
                serialized_name: 'qnAList',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'QnADTOElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'QnADTO'
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
