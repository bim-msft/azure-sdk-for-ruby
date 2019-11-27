# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

require 'uri'
require 'cgi'
require 'date'
require 'json'
require 'base64'
require 'erb'
require 'securerandom'
require 'time'
require 'timeliness'
require 'faraday'
require 'faraday-cookie_jar'
require 'concurrent'
require 'ms_rest'
require '2017-04-01/generated/azure_mgmt_event_hub/module_definition'
require 'ms_rest_azure'

module Azure::EventHub::Mgmt::V2017_04_01
  autoload :Operations,                                         '2017-04-01/generated/azure_mgmt_event_hub/operations.rb'
  autoload :Namespaces,                                         '2017-04-01/generated/azure_mgmt_event_hub/namespaces.rb'
  autoload :DisasterRecoveryConfigs,                            '2017-04-01/generated/azure_mgmt_event_hub/disaster_recovery_configs.rb'
  autoload :EventHubs,                                          '2017-04-01/generated/azure_mgmt_event_hub/event_hubs.rb'
  autoload :ConsumerGroups,                                     '2017-04-01/generated/azure_mgmt_event_hub/consumer_groups.rb'
  autoload :Regions,                                            '2017-04-01/generated/azure_mgmt_event_hub/regions.rb'
  autoload :EventHubManagementClient,                           '2017-04-01/generated/azure_mgmt_event_hub/event_hub_management_client.rb'

  module Models
    autoload :CheckNameAvailabilityResult,                        '2017-04-01/generated/azure_mgmt_event_hub/models/check_name_availability_result.rb'
    autoload :EventHubListResult,                                 '2017-04-01/generated/azure_mgmt_event_hub/models/event_hub_list_result.rb'
    autoload :Resource,                                           '2017-04-01/generated/azure_mgmt_event_hub/models/resource.rb'
    autoload :NWRuleSetIpRules,                                   '2017-04-01/generated/azure_mgmt_event_hub/models/nwrule_set_ip_rules.rb'
    autoload :ConsumerGroupListResult,                            '2017-04-01/generated/azure_mgmt_event_hub/models/consumer_group_list_result.rb'
    autoload :NetworkRuleSetListResult,                           '2017-04-01/generated/azure_mgmt_event_hub/models/network_rule_set_list_result.rb'
    autoload :CheckNameAvailabilityParameter,                     '2017-04-01/generated/azure_mgmt_event_hub/models/check_name_availability_parameter.rb'
    autoload :AccessKeys,                                         '2017-04-01/generated/azure_mgmt_event_hub/models/access_keys.rb'
    autoload :Subnet,                                             '2017-04-01/generated/azure_mgmt_event_hub/models/subnet.rb'
    autoload :Destination,                                        '2017-04-01/generated/azure_mgmt_event_hub/models/destination.rb'
    autoload :OperationDisplay,                                   '2017-04-01/generated/azure_mgmt_event_hub/models/operation_display.rb'
    autoload :NWRuleSetVirtualNetworkRules,                       '2017-04-01/generated/azure_mgmt_event_hub/models/nwrule_set_virtual_network_rules.rb'
    autoload :Operation,                                          '2017-04-01/generated/azure_mgmt_event_hub/models/operation.rb'
    autoload :EHNamespaceListResult,                              '2017-04-01/generated/azure_mgmt_event_hub/models/ehnamespace_list_result.rb'
    autoload :OperationListResult,                                '2017-04-01/generated/azure_mgmt_event_hub/models/operation_list_result.rb'
    autoload :RegenerateAccessKeyParameters,                      '2017-04-01/generated/azure_mgmt_event_hub/models/regenerate_access_key_parameters.rb'
    autoload :ErrorResponse,                                      '2017-04-01/generated/azure_mgmt_event_hub/models/error_response.rb'
    autoload :Sku,                                                '2017-04-01/generated/azure_mgmt_event_hub/models/sku.rb'
    autoload :MessagingRegionsListResult,                         '2017-04-01/generated/azure_mgmt_event_hub/models/messaging_regions_list_result.rb'
    autoload :CaptureDescription,                                 '2017-04-01/generated/azure_mgmt_event_hub/models/capture_description.rb'
    autoload :ArmDisasterRecoveryListResult,                      '2017-04-01/generated/azure_mgmt_event_hub/models/arm_disaster_recovery_list_result.rb'
    autoload :AuthorizationRuleListResult,                        '2017-04-01/generated/azure_mgmt_event_hub/models/authorization_rule_list_result.rb'
    autoload :MessagingRegionsProperties,                         '2017-04-01/generated/azure_mgmt_event_hub/models/messaging_regions_properties.rb'
    autoload :TrackedResource,                                    '2017-04-01/generated/azure_mgmt_event_hub/models/tracked_resource.rb'
    autoload :EHNamespace,                                        '2017-04-01/generated/azure_mgmt_event_hub/models/ehnamespace.rb'
    autoload :AuthorizationRule,                                  '2017-04-01/generated/azure_mgmt_event_hub/models/authorization_rule.rb'
    autoload :Eventhub,                                           '2017-04-01/generated/azure_mgmt_event_hub/models/eventhub.rb'
    autoload :ConsumerGroup,                                      '2017-04-01/generated/azure_mgmt_event_hub/models/consumer_group.rb'
    autoload :ArmDisasterRecovery,                                '2017-04-01/generated/azure_mgmt_event_hub/models/arm_disaster_recovery.rb'
    autoload :MessagingRegions,                                   '2017-04-01/generated/azure_mgmt_event_hub/models/messaging_regions.rb'
    autoload :MessagingPlan,                                      '2017-04-01/generated/azure_mgmt_event_hub/models/messaging_plan.rb'
    autoload :NetworkRuleSet,                                     '2017-04-01/generated/azure_mgmt_event_hub/models/network_rule_set.rb'
    autoload :SkuName,                                            '2017-04-01/generated/azure_mgmt_event_hub/models/sku_name.rb'
    autoload :SkuTier,                                            '2017-04-01/generated/azure_mgmt_event_hub/models/sku_tier.rb'
    autoload :AccessRights,                                       '2017-04-01/generated/azure_mgmt_event_hub/models/access_rights.rb'
    autoload :KeyType,                                            '2017-04-01/generated/azure_mgmt_event_hub/models/key_type.rb'
    autoload :EntityStatus,                                       '2017-04-01/generated/azure_mgmt_event_hub/models/entity_status.rb'
    autoload :EncodingCaptureDescription,                         '2017-04-01/generated/azure_mgmt_event_hub/models/encoding_capture_description.rb'
    autoload :UnavailableReason,                                  '2017-04-01/generated/azure_mgmt_event_hub/models/unavailable_reason.rb'
    autoload :ProvisioningStateDR,                                '2017-04-01/generated/azure_mgmt_event_hub/models/provisioning_state_dr.rb'
    autoload :RoleDisasterRecovery,                               '2017-04-01/generated/azure_mgmt_event_hub/models/role_disaster_recovery.rb'
    autoload :NetworkRuleIPAction,                                '2017-04-01/generated/azure_mgmt_event_hub/models/network_rule_ipaction.rb'
    autoload :DefaultAction,                                      '2017-04-01/generated/azure_mgmt_event_hub/models/default_action.rb'
  end
end
