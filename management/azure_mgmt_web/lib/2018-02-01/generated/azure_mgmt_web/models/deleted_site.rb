# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2018_02_01
  module Models
    #
    # A deleted app.
    #
    class DeletedSite < ProxyOnlyResource

      include MsRestAzure

      # @return [Integer] Numeric id for the deleted site
      attr_accessor :deleted_site_id

      # @return [String] Time in UTC when the app was deleted.
      attr_accessor :deleted_timestamp

      # @return [String] Subscription containing the deleted site
      attr_accessor :subscription

      # @return [String] ResourceGroup that contained the deleted site
      attr_accessor :resource_group

      # @return [String] Name of the deleted site
      attr_accessor :deleted_site_name

      # @return [String] Slot of the deleted site
      attr_accessor :slot

      # @return [String] Kind of site that was deleted
      attr_accessor :deleted_site_kind


      #
      # Mapper for DeletedSite class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeletedSite',
          type: {
            name: 'Composite',
            class_name: 'DeletedSite',
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
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
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
              deleted_site_id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.deletedSiteId',
                type: {
                  name: 'Number'
                }
              },
              deleted_timestamp: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.deletedTimestamp',
                type: {
                  name: 'String'
                }
              },
              subscription: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.subscription',
                type: {
                  name: 'String'
                }
              },
              resource_group: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.resourceGroup',
                type: {
                  name: 'String'
                }
              },
              deleted_site_name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.deletedSiteName',
                type: {
                  name: 'String'
                }
              },
              slot: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.slot',
                type: {
                  name: 'String'
                }
              },
              deleted_site_kind: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.kind',
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
