# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # Additional information on the backed up item.
    #
    class MabFileFolderProtectedItemExtendedInfo

      include MsRestAzure

      # @return [DateTime] Last time when the agent data synced to service.
      attr_accessor :last_refreshed_at

      # @return [DateTime] The oldest backup copy available.
      attr_accessor :oldest_recovery_point

      # @return [Integer] Number of backup copies associated with the backup
      # item.
      attr_accessor :recovery_point_count


      #
      # Mapper for MabFileFolderProtectedItemExtendedInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'MabFileFolderProtectedItemExtendedInfo',
          type: {
            name: 'Composite',
            class_name: 'MabFileFolderProtectedItemExtendedInfo',
            model_properties: {
              last_refreshed_at: {
                required: false,
                serialized_name: 'lastRefreshedAt',
                type: {
                  name: 'DateTime'
                }
              },
              oldest_recovery_point: {
                required: false,
                serialized_name: 'oldestRecoveryPoint',
                type: {
                  name: 'DateTime'
                }
              },
              recovery_point_count: {
                required: false,
                serialized_name: 'recoveryPointCount',
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
