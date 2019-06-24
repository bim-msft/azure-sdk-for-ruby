# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Microsoft.SoftwarePlan
  module Models
    #
    # Response on GET of a hybrid use benefit
    #
    class HybridUseBenefitModel < Resource

      include MsRestAzure

      # @return [Sku] Hybrid use benefit SKU
      attr_accessor :sku

      # @return [Integer] Indicates the revision of the hybrid use benefit
      attr_accessor :etag

      # @return [ProvisioningState] Provisioning state. Possible values
      # include: 'Succeeded', 'Cancelled', 'Failed'
      attr_accessor :provisioning_state

      # @return [DateTime] Created date
      attr_accessor :created_date

      # @return [DateTime] Last Ureated date
      attr_accessor :last_updated_date


      #
      # Mapper for HybridUseBenefitModel class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HybridUseBenefitModel',
          type: {
            name: 'Composite',
            class_name: 'HybridUseBenefitModel',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              sku: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'etag',
                type: {
                  name: 'Number'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              created_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.createdDate',
                type: {
                  name: 'DateTime'
                }
              },
              last_updated_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.lastUpdatedDate',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end