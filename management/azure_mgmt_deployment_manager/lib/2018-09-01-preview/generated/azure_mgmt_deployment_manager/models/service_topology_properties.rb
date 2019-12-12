# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DeploymentManager::Mgmt::V2018_09_01_preview
  module Models
    #
    # The properties of a service topology.
    #
    class ServiceTopologyProperties

      include MsRestAzure

      # @return [String] The resource Id of the artifact source that contains
      # the artifacts that can be referenced in the service units.
      attr_accessor :artifact_source_id


      #
      # Mapper for ServiceTopologyProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceTopologyProperties',
          type: {
            name: 'Composite',
            class_name: 'ServiceTopologyProperties',
            model_properties: {
              artifact_source_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'artifactSourceId',
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
