# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DeploymentManager::Mgmt::V2018_09_01_preview
  module Models
    #
    # Detailed error information of any failure.
    #
    class CloudErrorBody

      include MsRestAzure

      # @return [String] Error code string.
      attr_accessor :code

      # @return [String] Descriptive error information.
      attr_accessor :message

      # @return [String] Error target
      attr_accessor :target

      # @return [Array<CloudErrorBody>] More detailed error information.
      attr_accessor :details


      #
      # Mapper for CloudErrorBody class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CloudErrorBody',
          type: {
            name: 'Composite',
            class_name: 'CloudErrorBody',
            model_properties: {
              code: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              target: {
                client_side_validation: true,
                required: false,
                serialized_name: 'target',
                type: {
                  name: 'String'
                }
              },
              details: {
                client_side_validation: true,
                required: false,
                serialized_name: 'details',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CloudErrorBodyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CloudErrorBody'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
