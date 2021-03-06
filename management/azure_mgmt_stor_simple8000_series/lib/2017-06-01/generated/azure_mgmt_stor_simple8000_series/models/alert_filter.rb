# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # The OData filters to be used for Alert
    #
    class AlertFilter

      include MsRestAzure

      # @return [AlertStatus] Specifies the status of the alerts to be
      # filtered. Only 'Equality' operator is supported for this property.
      # Possible values include: 'Active', 'Cleared'
      attr_accessor :status

      # @return [AlertSeverity] Specifies the severity of the alerts to be
      # filtered. Only 'Equality' operator is supported for this property.
      # Possible values include: 'Informational', 'Warning', 'Critical'
      attr_accessor :severity

      # @return [AlertSourceType] Specifies the source type of the alerts to be
      # filtered. Only 'Equality' operator is supported for this property.
      # Possible values include: 'Resource', 'Device'
      attr_accessor :source_type

      # @return [String] Specifies the source name of the alerts to be
      # filtered. Only 'Equality' operator is supported for this property.
      attr_accessor :source_name

      # @return [DateTime] Specifies the appeared time (in UTC) of the alerts
      # to be filtered. Only 'Greater-Than' and 'Lesser-Than' operators are
      # supported for this property.
      attr_accessor :appeared_on_time


      #
      # Mapper for AlertFilter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AlertFilter',
          type: {
            name: 'Composite',
            class_name: 'AlertFilter',
            model_properties: {
              status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'AlertStatus'
                }
              },
              severity: {
                client_side_validation: true,
                required: false,
                serialized_name: 'severity',
                type: {
                  name: 'Enum',
                  module: 'AlertSeverity'
                }
              },
              source_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceType',
                type: {
                  name: 'Enum',
                  module: 'AlertSourceType'
                }
              },
              source_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'sourceName',
                type: {
                  name: 'String'
                }
              },
              appeared_on_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'appearedOnTime',
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
