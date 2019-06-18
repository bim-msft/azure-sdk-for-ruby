# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ApiManagement::Mgmt::V2018_01_01_preview
  module Models
    #
    # Issue contract Base Properties.
    #
    class IssueContractBaseProperties

      include MsRestAzure

      # @return [DateTime] Date and time when the issue was created.
      attr_accessor :created_date

      # @return [State] Status of the issue. Possible values include:
      # 'proposed', 'open', 'removed', 'resolved', 'closed'
      attr_accessor :state

      # @return [String] A resource identifier for the API the issue was
      # created for.
      attr_accessor :api_id


      #
      # Mapper for IssueContractBaseProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'IssueContractBaseProperties',
          type: {
            name: 'Composite',
            class_name: 'IssueContractBaseProperties',
            model_properties: {
              created_date: {
                required: false,
                serialized_name: 'createdDate',
                type: {
                  name: 'DateTime'
                }
              },
              state: {
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              api_id: {
                required: false,
                serialized_name: 'apiId',
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