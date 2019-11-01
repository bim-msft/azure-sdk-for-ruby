# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::VMwareCloudSimple::Mgmt::V2019_04_01
  module Models
    #
    # Error properties
    #
    class CSRPErrorBody

      include MsRestAzure

      # @return [String] Error's code
      attr_accessor :code

      # @return [Array<CSRPErrorBody>] Error's details
      attr_accessor :details

      # @return [String] Error's message
      attr_accessor :message

      # @return [String] Error's target
      attr_accessor :target


      #
      # Mapper for CSRPErrorBody class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CSRPErrorBody',
          type: {
            name: 'Composite',
            class_name: 'CSRPErrorBody',
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
              details: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'details',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'CSRPErrorBodyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'CSRPErrorBody'
                      }
                  }
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
              }
            }
          }
        }
      end
    end
  end
end