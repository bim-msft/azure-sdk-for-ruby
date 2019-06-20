# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Microsoft.VMwareCloudSimple
  module Models
    #
    # Dedicated cloud node model
    #
    class DedicatedCloudNode

      include MsRestAzure

      # @return [String]
      # /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/dedicatedCloudNodes/{dedicatedCloudNodeName}
      attr_accessor :id

      # @return [String] Azure region
      attr_accessor :location

      # @return [String] {dedicatedCloudNodeName}
      attr_accessor :name

      # @return [String] Availability Zone id, e.g. "az1"
      attr_accessor :availability_zone_id

      # @return [String] Availability Zone name, e.g. "Availability Zone 1"
      attr_accessor :availability_zone_name

      # @return [String] VMWare Cloud Rack Name
      attr_accessor :cloud_rack_name

      # @return date time the resource was created
      attr_accessor :created

      # @return [Integer] count of nodes to create
      attr_accessor :nodes_count

      # @return [String] Placement Group id, e.g. "n1"
      attr_accessor :placement_group_id

      # @return [String] Placement Name, e.g. "Placement Group 1"
      attr_accessor :placement_group_name

      # @return [String] Private Cloud Id
      attr_accessor :private_cloud_id

      # @return [String] Resource Pool Name
      attr_accessor :private_cloud_name

      # @return [String] The provisioning status of the resource
      attr_accessor :provisioning_state

      # @return purchase id
      attr_accessor :purchase_id

      # @return [String] SKU's id
      attr_accessor :id1

      # @return [String] SKU's name
      attr_accessor :name1

      # @return [NodeStatus] Node status, indicates is private cloud set up on
      # this node or not. Possible values include: 'unused', 'used'
      attr_accessor :status

      # @return [String] VMWare Cluster Name
      attr_accessor :vmware_cluster_name

      # @return [Sku] Dedicated Cloud Nodes SKU
      attr_accessor :sku

      # @return [Hash{String => String}] Dedicated Cloud Nodes tags
      attr_accessor :tags

      # @return [String] {resourceProviderNamespace}/{resourceType}
      attr_accessor :type


      #
      # Mapper for DedicatedCloudNode class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DedicatedCloudNode',
          type: {
            name: 'Composite',
            class_name: 'DedicatedCloudNode',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                constraints: {
                  Pattern: '^[-a-zA-Z0-9]+$'
                },
                type: {
                  name: 'String'
                }
              },
              availability_zone_id: {
                required: true,
                serialized_name: 'properties.availabilityZoneId',
                type: {
                  name: 'String'
                }
              },
              availability_zone_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.availabilityZoneName',
                type: {
                  name: 'String'
                }
              },
              cloud_rack_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.cloudRackName',
                type: {
                  name: 'String'
                }
              },
              created: {
                required: false,
                read_only: true,
                serialized_name: 'properties.created',
                type: {
                  name: 'Object'
                }
              },
              nodes_count: {
                required: true,
                serialized_name: 'properties.nodesCount',
                type: {
                  name: 'Number'
                }
              },
              placement_group_id: {
                required: true,
                serialized_name: 'properties.placementGroupId',
                type: {
                  name: 'String'
                }
              },
              placement_group_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.placementGroupName',
                type: {
                  name: 'String'
                }
              },
              private_cloud_id: {
                required: false,
                read_only: true,
                serialized_name: 'properties.privateCloudId',
                type: {
                  name: 'String'
                }
              },
              private_cloud_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.privateCloudName',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              purchase_id: {
                required: true,
                serialized_name: 'properties.purchaseId',
                type: {
                  name: 'String'
                }
              },
              id1: {
                required: true,
                serialized_name: 'properties.skuDescription.id',
                type: {
                  name: 'String'
                }
              },
              name1: {
                required: true,
                serialized_name: 'properties.skuDescription.name',
                type: {
                  name: 'String'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'properties.status',
                type: {
                  name: 'Enum',
                  module: 'NodeStatus'
                }
              },
              vmware_cluster_name: {
                required: false,
                read_only: true,
                serialized_name: 'properties.vmwareClusterName',
                type: {
                  name: 'String'
                }
              },
              sku: {
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
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
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
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
