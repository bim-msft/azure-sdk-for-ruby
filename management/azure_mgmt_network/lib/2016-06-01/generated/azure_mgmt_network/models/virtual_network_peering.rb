# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Network::Mgmt::V2016_06_01
  module Models
    #
    # Peerings in a VirtualNetwork resource
    #
    class VirtualNetworkPeering < SubResource

      include MsRestAzure

      # @return [Boolean] Gets or sets whether the VMs in the linked virtual
      # network space would be able to access all the VMs in local Virtual
      # network space
      attr_accessor :allow_virtual_network_access

      # @return [Boolean] Gets or sets whether the forwarded traffic from the
      # VMs in the remote virtual network will be allowed/disallowed
      attr_accessor :allow_forwarded_traffic

      # @return [Boolean] Gets or sets if gatewayLinks can be used in remote
      # virtual network’s link to this virtual network
      attr_accessor :allow_gateway_transit

      # @return [Boolean] Gets or sets if remote gateways can be used on this
      # virtual network. If the flag is set to true, and allowGatewayTransit on
      # remote peering is also true, virtual network will use gateways of
      # remote virtual network for transit. Only 1 peering can have this flag
      # set to true. This flag cannot be set if virtual network already has a
      # gateway.
      attr_accessor :use_remote_gateways

      # @return [SubResource] Gets or sets the reference of the remote virtual
      # network
      attr_accessor :remote_virtual_network

      # @return [VirtualNetworkPeeringState] Gets the status of the virtual
      # network peering. Possible values include: 'Initiated', 'Connected',
      # 'Disconnected'
      attr_accessor :peering_state

      # @return [String] Gets provisioning state of the resource
      attr_accessor :provisioning_state

      # @return [String] Gets or sets the name of the resource that is unique
      # within a resource group. This name can be used to access the resource
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated
      attr_accessor :etag


      #
      # Mapper for VirtualNetworkPeering class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VirtualNetworkPeering',
          type: {
            name: 'Composite',
            class_name: 'VirtualNetworkPeering',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              allow_virtual_network_access: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.allowVirtualNetworkAccess',
                type: {
                  name: 'Boolean'
                }
              },
              allow_forwarded_traffic: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.allowForwardedTraffic',
                type: {
                  name: 'Boolean'
                }
              },
              allow_gateway_transit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.allowGatewayTransit',
                type: {
                  name: 'Boolean'
                }
              },
              use_remote_gateways: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.useRemoteGateways',
                type: {
                  name: 'Boolean'
                }
              },
              remote_virtual_network: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.remoteVirtualNetwork',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              peering_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.peeringState',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              etag: {
                client_side_validation: true,
                required: false,
                serialized_name: 'etag',
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
