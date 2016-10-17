# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # The query filters that can be used with the list containers API.
    #
    class BMSContainerQueryObject

      include MsRestAzure

      # @return [String] Backup management type for this container. Possible
      # values: AzureIaasVM, MAB, DPM. Possible values: AzureIaasVM, MAB, DPM.
      attr_accessor :backup_management_type

      # @return [String] Status of registration of this container with the
      # Recovery Services Vault.
      attr_accessor :status

      # @return [String] Friendly name of this container.
      attr_accessor :friendly_name


      #
      # Mapper for BMSContainerQueryObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'BMSContainerQueryObject',
          type: {
            name: 'Composite',
            class_name: 'BMSContainerQueryObject',
            model_properties: {
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              friendly_name: {
                required: false,
                serialized_name: 'friendlyName',
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
