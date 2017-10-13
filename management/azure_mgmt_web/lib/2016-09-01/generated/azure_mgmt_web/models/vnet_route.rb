# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_09_01
  module Models
    #
    # Virtual Network route contract used to pass routing information for a
    # Virtual Network.
    #
    class VnetRoute < ProxyOnlyResource

      include MsRestAzure

      # @return [String] The name of this route. This is only returned by the
      # server and does not need to be set by the client.
      attr_accessor :vnet_route_name

      # @return [String] The starting address for this route. This may also
      # include a CIDR notation, in which case the end address must not be
      # specified.
      attr_accessor :start_address

      # @return [String] The ending address for this route. If the start
      # address is specified in CIDR notation, this must be omitted.
      attr_accessor :end_address

      # @return [RouteType] The type of route this is:
      # DEFAULT - By default, every app has routes to the local address ranges
      # specified by RFC1918
      # INHERITED - Routes inherited from the real Virtual Network routes
      # STATIC - Static route set on the app only
      #
      # These values will be used for syncing an app's routes with those from a
      # Virtual Network. Possible values include: 'DEFAULT', 'INHERITED',
      # 'STATIC'
      attr_accessor :route_type


      #
      # Mapper for VnetRoute class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VnetRoute',
          type: {
            name: 'Composite',
            class_name: 'VnetRoute',
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
              kind: {
                required: false,
                serialized_name: 'kind',
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
              vnet_route_name: {
                required: false,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              start_address: {
                required: false,
                serialized_name: 'properties.startAddress',
                type: {
                  name: 'String'
                }
              },
              end_address: {
                required: false,
                serialized_name: 'properties.endAddress',
                type: {
                  name: 'String'
                }
              },
              route_type: {
                required: false,
                serialized_name: 'properties.routeType',
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