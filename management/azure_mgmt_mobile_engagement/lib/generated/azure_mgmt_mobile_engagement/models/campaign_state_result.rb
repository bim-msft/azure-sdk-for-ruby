# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Model object.
    #
    class CampaignStateResult < CampaignState

      include MsRestAzure

      # @return [Integer] Campaign identifier.
      attr_accessor :id


      #
      # Mapper for CampaignStateResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CampaignStateResult',
          type: {
            name: 'Composite',
            class_name: 'CampaignStateResult',
            model_properties: {
              state: {
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end