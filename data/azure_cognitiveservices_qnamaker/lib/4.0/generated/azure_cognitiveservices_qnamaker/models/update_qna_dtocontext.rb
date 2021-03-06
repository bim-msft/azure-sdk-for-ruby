# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Qnamaker::V4_0
  module Models
    #
    # Context associated with Qna to be updated.
    #
    class UpdateQnaDTOContext < UpdateContextDTO

      include MsRestAzure


      #
      # Mapper for UpdateQnaDTOContext class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UpdateQnaDTO_context',
          type: {
            name: 'Composite',
            class_name: 'UpdateQnaDTOContext',
            model_properties: {
              prompts_to_delete: {
                client_side_validation: true,
                required: false,
                serialized_name: 'promptsToDelete',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'NumberElementType',
                      type: {
                        name: 'Number'
                      }
                  }
                }
              },
              prompts_to_add: {
                client_side_validation: true,
                required: false,
                serialized_name: 'promptsToAdd',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PromptDTOElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PromptDTO'
                      }
                  }
                }
              },
              is_context_only: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isContextOnly',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
