# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V3_0_preview
  module Models
    #
    # Model object.
    #
    #
    class UserCollaborator

      include MsRestAzure

      # @return [String] The email address of the user.
      attr_accessor :email


      #
      # Mapper for UserCollaborator class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UserCollaborator',
          type: {
            name: 'Composite',
            class_name: 'UserCollaborator',
            model_properties: {
              email: {
                client_side_validation: true,
                required: false,
                serialized_name: 'email',
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
