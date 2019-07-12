# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Input for the task that migrates Oracle databases to Azure Database for
    # PostgreSQL for online migrations
    #
    class MigrateOracleAzureDbPostgreSqlSyncTaskInput

      include MsRestAzure

      # @return [Array<MigrateOracleAzureDbPostgreSqlSyncDatabaseInput>]
      # Databases to migrate
      attr_accessor :selected_databases

      # @return [PostgreSqlConnectionInfo] Connection information for target
      # Azure Database for PostgreSQL
      attr_accessor :target_connection_info

      # @return [OracleConnectionInfo] Connection information for source Oracle
      attr_accessor :source_connection_info


      #
      # Mapper for MigrateOracleAzureDbPostgreSqlSyncTaskInput class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'MigrateOracleAzureDbPostgreSqlSyncTaskInput',
          type: {
            name: 'Composite',
            class_name: 'MigrateOracleAzureDbPostgreSqlSyncTaskInput',
            model_properties: {
              selected_databases: {
                client_side_validation: true,
                required: true,
                serialized_name: 'selectedDatabases',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'MigrateOracleAzureDbPostgreSqlSyncDatabaseInputElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'MigrateOracleAzureDbPostgreSqlSyncDatabaseInput'
                      }
                  }
                }
              },
              target_connection_info: {
                client_side_validation: true,
                required: true,
                serialized_name: 'targetConnectionInfo',
                type: {
                  name: 'Composite',
                  class_name: 'PostgreSqlConnectionInfo'
                }
              },
              source_connection_info: {
                client_side_validation: true,
                required: true,
                serialized_name: 'sourceConnectionInfo',
                type: {
                  name: 'Composite',
                  class_name: 'OracleConnectionInfo'
                }
              }
            }
          }
        }
      end
    end
  end
end