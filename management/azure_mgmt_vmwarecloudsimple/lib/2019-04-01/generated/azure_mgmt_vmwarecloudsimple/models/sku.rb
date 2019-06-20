# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::VMwareCloudSimple::Mgmt::V2019-04-01
  module Models
    #
    # The purchase SKU for CloudSimple paid resources
    #
    class Sku

      include MsRestAzure

      # @return [String] The capacity of the SKU
      attr_accessor :capacity

      # @return [String] dedicatedCloudNode example: 8 x Ten-Core Intel® Xeon®
      # Processor E5-2640 v4 2.40GHz 25MB Cache (90W); 12 x 64GB PC4-19200
      # 2400MHz DDR4 ECC Registered DIMM, ...
      attr_accessor :description

      # @return [String] If the service has different generations of hardware,
      # for the same SKU, then that can be captured here
      attr_accessor :family

      # @return [String] The name of the SKU for VMWare CloudSimple Node
      attr_accessor :name

      # @return [String] The tier of the SKU
      attr_accessor :tier


      #
      # Mapper for Sku class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Sku',
          type: {
            name: 'Composite',
            class_name: 'Sku',
            model_properties: {
              capacity: {
                required: false,
                serialized_name: 'capacity',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              family: {
                required: false,
                serialized_name: 'family',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              tier: {
                required: false,
                serialized_name: 'tier',
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
