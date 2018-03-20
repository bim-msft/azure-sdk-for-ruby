# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::Mgmt::V2017_07_01_preview
  module Models
    #
    # Creates a particular correlation between services.
    #
    class ServiceCorrelationDescription

      include MsRestAzure

      # @return [Enum] Possible values include: 'Invalid', 'Affinity',
      # 'AlignedAffinity', 'NonAlignedAffinity'
      attr_accessor :scheme

      # @return [String]
      attr_accessor :service_name


      #
      # Mapper for ServiceCorrelationDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceCorrelationDescription',
          type: {
            name: 'Composite',
            class_name: 'ServiceCorrelationDescription',
            model_properties: {
              scheme: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Scheme',
                type: {
                  name: 'String'
                }
              },
              service_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ServiceName',
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