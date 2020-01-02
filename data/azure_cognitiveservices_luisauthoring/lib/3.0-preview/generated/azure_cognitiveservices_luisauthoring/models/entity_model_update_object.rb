# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V3_0_preview
  module Models
    #
    # An entity extractor update object.
    #
    class EntityModelUpdateObject

      include MsRestAzure

      # @return [String] Entity name.
      attr_accessor :name

      # @return [String] The instance of model name
      attr_accessor :instance_of


      #
      # Mapper for EntityModelUpdateObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'EntityModelUpdateObject',
          type: {
            name: 'Composite',
            class_name: 'EntityModelUpdateObject',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              instance_of: {
                client_side_validation: true,
                required: false,
                serialized_name: 'instanceOf',
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