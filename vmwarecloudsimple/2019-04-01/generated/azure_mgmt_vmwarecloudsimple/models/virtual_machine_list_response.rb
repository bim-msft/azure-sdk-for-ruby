# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Microsoft.VMwareCloudSimple
  module Models
    #
    # List of virtual machines
    #
    class VirtualMachineListResponse

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Link for next list of VirtualMachines
      attr_accessor :next_link

      # @return [Array<VirtualMachine>] Results of the VirtualMachine list
      attr_accessor :value

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<VirtualMachine>] operation results.
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
      # @return [VirtualMachineListResponse] with next page content.
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
      # Mapper for VirtualMachineListResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineListResponse',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineListResponse',
            model_properties: {
              next_link: {
                required: false,
                serialized_name: 'nextLink',
                type: {
                  name: 'String'
                }
              },
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'VirtualMachineElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VirtualMachine'
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
