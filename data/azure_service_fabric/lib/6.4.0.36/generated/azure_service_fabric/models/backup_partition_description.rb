# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Describes the parameters for triggering partition's backup.
    #
    class BackupPartitionDescription

      include MsRestAzure

      # @return [BackupStorageDescription] Specifies the details of the backup
      # storage where to save the backup.
      attr_accessor :backup_storage


      #
      # Mapper for BackupPartitionDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BackupPartitionDescription',
          type: {
            name: 'Composite',
            class_name: 'BackupPartitionDescription',
            model_properties: {
              backup_storage: {
                client_side_validation: true,
                required: false,
                serialized_name: 'BackupStorage',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'StorageKind',
                  uber_parent: 'BackupStorageDescription',
                  class_name: 'BackupStorageDescription'
                }
              }
            }
          }
        }
      end
    end
  end
end