# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Qnamaker::V4_0
  module Models
    #
    # Update Body schema to represent context to be updated
    #
    class UpdateContextDTO

      include MsRestAzure

      # @return [Array<Integer>] List of prompts associated with qna to be
      # deleted
      attr_accessor :prompts_to_delete

      # @return [Array<PromptDTO>] List of prompts to be added to the qna.
      attr_accessor :prompts_to_add

      # @return [Boolean] To mark if a prompt is relevant only with a previous
      # question or not.
      # true - Do not include this QnA as search result for queries without
      # context
      # false - ignores context and includes this QnA in search result
      attr_accessor :is_context_only


      #
      # Mapper for UpdateContextDTO class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UpdateContextDTO',
          type: {
            name: 'Composite',
            class_name: 'UpdateContextDTO',
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
