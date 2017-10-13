# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Dns::Mgmt::V2016_04_01
  module Models
    #
    # The response to a Zone List or ListAll operation.
    #
    class ZoneListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<Zone>] Information about the DNS zones.
      attr_accessor :value

      # @return [String] The continuation token for the next page of results.
      attr_accessor :next_link

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<Zone>] operation results.
      #
      def get_all_items
        items = @value
        page = self
        while page.next_link != nil do
          page = page.get_next_page
          items.concat(page.value)
        end
        items
      end

      #
      # Gets the next page of results.
      #
      # @return [ZoneListResult] with next page content.
      #
      def get_next_page
        response = @next_method.call(@next_link).value! unless @next_method.nil?
        unless response.nil?
          @next_link = response.body.next_link
          @value = response.body.value
          self
        end
      end

      #
      # Mapper for ZoneListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ZoneListResult',
          type: {
            name: 'Composite',
            class_name: 'ZoneListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ZoneElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Zone'
                      }
                  }
                }
              },
              next_link: {
                required: false,
                serialized_name: 'nextLink',
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