# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerService::Mgmt::V2019_06_01
  module Models
    #
    # Identity for the managed cluster.
    #
    class ManagedClusterIdentity

      include MsRestAzure

      # @return [String] The principal id of the system assigned identity which
      # is used by master components.
      attr_accessor :principal_id

      # @return [String] The tenant id of the system assigned identity which is
      # used by master components.
      attr_accessor :tenant_id

      # @return [ResourceIdentityType] The type of identity used for the
      # managed cluster. Type 'SystemAssigned' will use an implicitly created
      # identity in master components and an auto-created user assigned
      # identity in MC_ resource group in agent nodes. Type 'None' will not use
      # MSI for the managed cluster, service principal will be used instead.
      # Possible values include: 'SystemAssigned', 'None'
      attr_accessor :type


      #
      # Mapper for ManagedClusterIdentity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagedClusterIdentity',
          type: {
            name: 'Composite',
            class_name: 'ManagedClusterIdentity',
            model_properties: {
              principal_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'principalId',
                type: {
                  name: 'String'
                }
              },
              tenant_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'tenantId',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'ResourceIdentityType'
                }
              }
            }
          }
        }
      end
    end
  end
end
