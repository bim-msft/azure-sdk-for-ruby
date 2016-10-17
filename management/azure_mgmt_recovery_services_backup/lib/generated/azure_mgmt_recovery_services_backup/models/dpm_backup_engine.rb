# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  module Models
    #
    # Data Protection Manager (DPM) specific backup engine.
    #
    class DpmBackupEngine < BackupEngineBase

      include MsRestAzure


      def initialize
        @backupEngineType = "DpmBackupEngine"
      end

      attr_accessor :backupEngineType


      #
      # Mapper for DpmBackupEngine class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DpmBackupEngine',
          type: {
            name: 'Composite',
            class_name: 'DpmBackupEngine',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              e_tag: {
                required: false,
                serialized_name: 'eTag',
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
              },
              backup_management_type: {
                required: false,
                serialized_name: 'backupManagementType',
                type: {
                  name: 'String'
                }
              },
              registration_status: {
                required: false,
                serialized_name: 'registrationStatus',
                type: {
                  name: 'String'
                }
              },
              health_status: {
                required: false,
                serialized_name: 'healthStatus',
                type: {
                  name: 'String'
                }
              },
              can_re_register: {
                required: false,
                serialized_name: 'canReRegister',
                type: {
                  name: 'Boolean'
                }
              },
              backup_engine_id: {
                required: false,
                serialized_name: 'backupEngineId',
                type: {
                  name: 'String'
                }
              },
              backupEngineType: {
                required: true,
                serialized_name: 'backupEngineType',
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
