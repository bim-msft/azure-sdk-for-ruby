# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Qnamaker::V4_0
  module Models
    #
    # Context associated with Qna.
    #
    class ContextDTO

      include MsRestAzure

      # @return [Boolean] To mark if a prompt is relevant only with a previous
      # question or not.
      # true - Do not include this QnA as search result for queries without
      # context
      # false - ignores context and includes this QnA in search result
      attr_accessor :is_context_only

      # @return [Array<PromptDTO>] List of prompts associated with the answer.
      attr_accessor :prompts


      #
      # Mapper for ContextDTO class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContextDTO',
          type: {
            name: 'Composite',
            class_name: 'ContextDTO',
            model_properties: {
              is_context_only: {
                client_side_validation: true,
                required: false,
                serialized_name: 'isContextOnly',
                type: {
                  name: 'Boolean'
                }
              },
              prompts: {
                client_side_validation: true,
                required: false,
                serialized_name: 'prompts',
                constraints: {
                  MaxItems: 20
                },
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
              }
            }
          }
        }
      end
    end
  end
end
