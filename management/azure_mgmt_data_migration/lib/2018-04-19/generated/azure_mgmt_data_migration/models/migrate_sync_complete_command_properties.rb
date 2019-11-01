# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Properties for the command that completes sync migration for a database.
    #
    class MigrateSyncCompleteCommandProperties < CommandProperties

      include MsRestAzure


      def initialize
        @commandType = "Migrate.Sync.Complete.Database"
      end

      attr_accessor :commandType

      # @return [MigrateSyncCompleteCommandInput] Command input
      attr_accessor :input

      # @return [MigrateSyncCompleteCommandOutput] Command output. This is
      # ignored if submitted.
      attr_accessor :output


      #
      # Mapper for MigrateSyncCompleteCommandProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Migrate.Sync.Complete.Database',
          type: {
            name: 'Composite',
            class_name: 'MigrateSyncCompleteCommandProperties',
            model_properties: {
              errors: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'errors',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ODataErrorElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ODataError'
                      }
                  }
                }
              },
              state: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              commandType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'commandType',
                type: {
                  name: 'String'
                }
              },
              input: {
                client_side_validation: true,
                required: false,
                serialized_name: 'input',
                type: {
                  name: 'Composite',
                  class_name: 'MigrateSyncCompleteCommandInput'
                }
              },
              output: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'output',
                type: {
                  name: 'Composite',
                  class_name: 'MigrateSyncCompleteCommandOutput'
                }
              }
            }
          }
        }
      end
    end
  end
end