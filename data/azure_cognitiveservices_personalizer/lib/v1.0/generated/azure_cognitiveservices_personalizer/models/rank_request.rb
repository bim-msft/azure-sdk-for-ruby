# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Personalizer::V1_0
  module Models
    #
    # Request a set of actions to be ranked by the Personalizer service.
    #
    class RankRequest

      include MsRestAzure

      # @return Features of the context used for Personalizer as a
      # dictionary of dictionaries. This depends on the application, and
      # typically includes features about the current user, their
      # device, profile information, data about time and date, etc.
      attr_accessor :context_features

      # @return [Array<RankableAction>] The set of actions the Personalizer
      # service can pick from.
      # The set should not contain more than 50 actions.
      # The order of the actions does not affect the rank result but the order
      # should match the sequence your application would have used to display
      # them.
      attr_accessor :actions

      # @return [Array<String>] The set of action ids to exclude from ranking.
      attr_accessor :excluded_actions

      # @return [String] Optionally pass an eventId that uniquely identifies
      # this Rank event.
      # If null, the service generates a unique eventId. The eventId will be
      # used for
      # associating this request with its reward, as well as seeding the
      # pseudo-random
      # generator when making a Personalizer call.
      attr_accessor :event_id

      # @return [Boolean] Send false if the user will see the rank results,
      # therefore
      # Personalizer will expect a Reward call, otherwise it will assign the
      # default
      # Reward to the event. Send true if it is possible the user will not see
      # the
      # rank results, because the page is rendering later, or the Rank results
      # may be
      # overridden by code further downstream. Default value: false .
      attr_accessor :defer_activation


      #
      # Mapper for RankRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RankRequest',
          type: {
            name: 'Composite',
            class_name: 'RankRequest',
            model_properties: {
              context_features: {
                client_side_validation: true,
                required: false,
                serialized_name: 'contextFeatures',
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
              actions: {
                client_side_validation: true,
                required: true,
                serialized_name: 'actions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'RankableActionElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RankableAction'
                      }
                  }
                }
              },
              excluded_actions: {
                client_side_validation: true,
                required: false,
                serialized_name: 'excludedActions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              event_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'eventId',
                constraints: {
                  MaxLength: 256
                },
                type: {
                  name: 'String'
                }
              },
              defer_activation: {
                client_side_validation: true,
                required: false,
                serialized_name: 'deferActivation',
                default_value: false,
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end