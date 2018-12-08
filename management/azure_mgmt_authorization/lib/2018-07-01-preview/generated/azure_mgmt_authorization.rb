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
require '2018-07-01-preview/generated/azure_mgmt_authorization/module_definition'
require 'ms_rest_azure'

module Azure::Authorization::Mgmt::V2018_07_01_preview
  autoload :DenyAssignments,                                    '2018-07-01-preview/generated/azure_mgmt_authorization/deny_assignments.rb'
  autoload :AuthorizationManagementClient,                      '2018-07-01-preview/generated/azure_mgmt_authorization/authorization_management_client.rb'

  module Models
    autoload :Principal,                                          '2018-07-01-preview/generated/azure_mgmt_authorization/models/principal.rb'
    autoload :DenyAssignment,                                     '2018-07-01-preview/generated/azure_mgmt_authorization/models/deny_assignment.rb'
    autoload :DenyAssignmentPermission,                           '2018-07-01-preview/generated/azure_mgmt_authorization/models/deny_assignment_permission.rb'
    autoload :DenyAssignmentListResult,                           '2018-07-01-preview/generated/azure_mgmt_authorization/models/deny_assignment_list_result.rb'
    autoload :DenyAssignmentFilter,                               '2018-07-01-preview/generated/azure_mgmt_authorization/models/deny_assignment_filter.rb'
  end
end