# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataFactory::Mgmt::V2017_09_01_preview
  module Models
    #
    # HDInsight streaming activity type.
    #
    class HDInsightStreamingActivity < ExecutionActivity

      include MsRestAzure


      def initialize
        @type = "HDInsightStreaming"
      end

      attr_accessor :type

      # @return [Array<LinkedServiceReference>] Storage linked service
      # references.
      attr_accessor :storage_linked_services

      # @return User specified arguments to HDInsightActivity.
      attr_accessor :arguments

      # @return [HDInsightActivityDebugInfoOption] Debug info option. Possible
      # values include: 'None', 'Always', 'Failure'
      attr_accessor :get_debug_info

      # @return Mapper executable name. Type: string (or Expression with
      # resultType string).
      attr_accessor :mapper

      # @return Reducer executable name. Type: string (or Expression with
      # resultType string).
      attr_accessor :reducer

      # @return Input blob path. Type: string (or Expression with resultType
      # string).
      attr_accessor :input

      # @return Output blob path. Type: string (or Expression with resultType
      # string).
      attr_accessor :output

      # @return Paths to streaming job files. Can be directories.
      attr_accessor :file_paths

      # @return [LinkedServiceReference] Linked service reference where the
      # files are located.
      attr_accessor :file_linked_service

      # @return Combiner executable name. Type: string (or Expression with
      # resultType string).
      attr_accessor :combiner

      # @return Command line environment values.
      attr_accessor :command_environment

      # @return Allows user to specify defines for streaming job request.
      attr_accessor :defines


      #
      # Mapper for HDInsightStreamingActivity class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'HDInsightStreaming',
          type: {
            name: 'Composite',
            class_name: 'HDInsightStreamingActivity',
            model_properties: {
              additional_properties: {
                client_side_validation: true,
                required: false,
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              name: {
                client_side_validation: true,
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              description: {
                client_side_validation: true,
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              depends_on: {
                client_side_validation: true,
                required: false,
                serialized_name: 'dependsOn',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ActivityDependencyElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ActivityDependency'
                      }
                  }
                }
              },
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              linked_service_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'linkedServiceName',
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              },
              policy: {
                client_side_validation: true,
                required: false,
                serialized_name: 'policy',
                type: {
                  name: 'Composite',
                  class_name: 'ActivityPolicy'
                }
              },
              storage_linked_services: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.storageLinkedServices',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'LinkedServiceReferenceElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'LinkedServiceReference'
                      }
                  }
                }
              },
              arguments: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.arguments',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              get_debug_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.getDebugInfo',
                type: {
                  name: 'String'
                }
              },
              mapper: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.mapper',
                type: {
                  name: 'Object'
                }
              },
              reducer: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.reducer',
                type: {
                  name: 'Object'
                }
              },
              input: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.input',
                type: {
                  name: 'Object'
                }
              },
              output: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.output',
                type: {
                  name: 'Object'
                }
              },
              file_paths: {
                client_side_validation: true,
                required: true,
                serialized_name: 'typeProperties.filePaths',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              file_linked_service: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.fileLinkedService',
                type: {
                  name: 'Composite',
                  class_name: 'LinkedServiceReference'
                }
              },
              combiner: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.combiner',
                type: {
                  name: 'Object'
                }
              },
              command_environment: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.commandEnvironment',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
                      }
                  }
                }
              },
              defines: {
                client_side_validation: true,
                required: false,
                serialized_name: 'typeProperties.defines',
                type: {
                  name: 'Dictionary',
                  value: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
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