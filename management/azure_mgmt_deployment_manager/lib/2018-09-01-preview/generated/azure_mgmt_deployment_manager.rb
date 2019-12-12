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
require '2018-09-01-preview/generated/azure_mgmt_deployment_manager/module_definition'
require 'ms_rest_azure'

module Azure::DeploymentManager::Mgmt::V2018_09_01_preview
  autoload :ServiceTopologies,                                  '2018-09-01-preview/generated/azure_mgmt_deployment_manager/service_topologies.rb'
  autoload :Services,                                           '2018-09-01-preview/generated/azure_mgmt_deployment_manager/services.rb'
  autoload :ServiceUnits,                                       '2018-09-01-preview/generated/azure_mgmt_deployment_manager/service_units.rb'
  autoload :Steps,                                              '2018-09-01-preview/generated/azure_mgmt_deployment_manager/steps.rb'
  autoload :Rollouts,                                           '2018-09-01-preview/generated/azure_mgmt_deployment_manager/rollouts.rb'
  autoload :ArtifactSources,                                    '2018-09-01-preview/generated/azure_mgmt_deployment_manager/artifact_sources.rb'
  autoload :Operations,                                         '2018-09-01-preview/generated/azure_mgmt_deployment_manager/operations.rb'
  autoload :AzureDeploymentManager,                             '2018-09-01-preview/generated/azure_mgmt_deployment_manager/azure_deployment_manager.rb'

  module Models
    autoload :RolloutPropertiesModel,                             '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/rollout_properties_model.rb'
    autoload :Message,                                            '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/message.rb'
    autoload :RolloutStep,                                        '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/rollout_step.rb'
    autoload :Step,                                               '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/step.rb'
    autoload :StepProperties,                                     '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/step_properties.rb'
    autoload :WaitStepAttributes,                                 '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/wait_step_attributes.rb'
    autoload :Authentication,                                     '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/authentication.rb'
    autoload :ServiceUnitArtifacts,                               '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/service_unit_artifacts.rb'
    autoload :ServiceUnitProperties,                              '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/service_unit_properties.rb'
    autoload :Operation,                                          '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/operation.rb'
    autoload :RolloutOperationInfo,                               '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/rollout_operation_info.rb'
    autoload :OperationDetail,                                    '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/operation_detail.rb'
    autoload :ResourceOperation,                                  '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/resource_operation.rb'
    autoload :Identity,                                           '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/identity.rb'
    autoload :ArtifactSourcePropertiesModel,                      '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/artifact_source_properties_model.rb'
    autoload :StepOperationInfo,                                  '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/step_operation_info.rb'
    autoload :ServiceTopologyProperties,                          '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/service_topology_properties.rb'
    autoload :CloudErrorBody,                                     '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/cloud_error_body.rb'
    autoload :Resource,                                           '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/resource.rb'
    autoload :PrePostStep,                                        '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/pre_post_step.rb'
    autoload :ServiceProperties,                                  '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/service_properties.rb'
    autoload :RolloutRequest,                                     '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/rollout_request.rb'
    autoload :ArtifactSource,                                     '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/artifact_source.rb'
    autoload :SasAuthentication,                                  '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/sas_authentication.rb'
    autoload :ServiceUnit,                                        '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/service_unit.rb'
    autoload :Service,                                            '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/service.rb'
    autoload :TrackedResource,                                    '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/tracked_resource.rb'
    autoload :Rollout,                                            '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/rollout.rb'
    autoload :ServiceTopologyResource,                            '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/service_topology_resource.rb'
    autoload :ServiceResource,                                    '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/service_resource.rb'
    autoload :ServiceUnitResource,                                '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/service_unit_resource.rb'
    autoload :StepResource,                                       '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/step_resource.rb'
    autoload :WaitStepProperties,                                 '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/wait_step_properties.rb'
    autoload :ProxyResource,                                      '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/proxy_resource.rb'
    autoload :AzureEntityResource,                                '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/azure_entity_resource.rb'
    autoload :DeploymentMode,                                     '2018-09-01-preview/generated/azure_mgmt_deployment_manager/models/deployment_mode.rb'
  end
end
