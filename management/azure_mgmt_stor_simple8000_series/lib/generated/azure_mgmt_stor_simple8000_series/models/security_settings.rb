# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series
  module Models
    #
    # The security settings of a device.
    #
    class SecuritySettings < BaseModel

      include MsRestAzure

      # @return [RemoteManagementSettings] The settings for remote management
      # of a device.
      attr_accessor :remote_management_settings

      # @return [ChapSettings] The Challenge-Handshake Authentication Protocol
      # (CHAP) settings.
      attr_accessor :chap_settings


      #
      # Mapper for SecuritySettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SecuritySettings',
          type: {
            name: 'Composite',
            class_name: 'SecuritySettings',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'Enum',
                  module: 'Kind'
                }
              },
              remote_management_settings: {
                required: true,
                serialized_name: 'properties.remoteManagementSettings',
                type: {
                  name: 'Composite',
                  class_name: 'RemoteManagementSettings'
                }
              },
              chap_settings: {
                required: true,
                serialized_name: 'properties.chapSettings',
                type: {
                  name: 'Composite',
                  class_name: 'ChapSettings'
                }
              }
            }
          }
        }
      end
    end
  end
end