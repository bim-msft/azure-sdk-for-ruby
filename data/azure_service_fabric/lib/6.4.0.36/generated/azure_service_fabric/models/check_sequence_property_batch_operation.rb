# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Compares the Sequence Number of a property with the SequenceNumber
    # argument.
    # A property's sequence number can be thought of as that property's
    # version.
    # Every time the property is modified, its sequence number is increased.
    # The sequence number can be found in a property's metadata.
    # The comparison fails if the sequence numbers are not equal.
    # CheckSequencePropertyBatchOperation is generally used as a precondition
    # for the write operations in the batch.
    # Note that if one PropertyBatchOperation in a PropertyBatch fails,
    # the entire batch fails and cannot be committed in a transactional manner.
    #
    class CheckSequencePropertyBatchOperation < PropertyBatchOperation

      include MsRestAzure


      def initialize
        @Kind = "CheckSequence"
      end

      attr_accessor :Kind

      # @return [String] The expected sequence number.
      attr_accessor :sequence_number


      #
      # Mapper for CheckSequencePropertyBatchOperation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'CheckSequence',
          type: {
            name: 'Composite',
            class_name: 'CheckSequencePropertyBatchOperation',
            model_properties: {
              property_name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'PropertyName',
                type: {
                  name: 'String'
                }
              },
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              sequence_number: {
                client_side_validation: true,
                required: true,
                serialized_name: 'SequenceNumber',
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