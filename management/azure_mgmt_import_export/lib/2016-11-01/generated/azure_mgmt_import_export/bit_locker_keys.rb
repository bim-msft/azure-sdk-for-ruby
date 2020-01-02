# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ImportExport::Mgmt::V2016_11_01
  #
  # The Storage Import/Export Resource Provider API.
  #
  class BitLockerKeys
    include MsRestAzure

    #
    # Creates and initializes a new instance of the BitLockerKeys class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [StorageImportExport] reference to the StorageImportExport
    attr_reader :client

    #
    # Returns the BitLocker Keys for all drives in the specified job.
    #
    # @param job_name [String] The name of the import/export job.
    # @param resource_group_name [String] The resource group name uniquely
    # identifies the resource group within the user subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [GetBitLockerKeysResponse] operation results.
    #
    def list(job_name, resource_group_name, custom_headers:nil)
      response = list_async(job_name, resource_group_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Returns the BitLocker Keys for all drives in the specified job.
    #
    # @param job_name [String] The name of the import/export job.
    # @param resource_group_name [String] The resource group name uniquely
    # identifies the resource group within the user subscription.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(job_name, resource_group_name, custom_headers:nil)
      list_async(job_name, resource_group_name, custom_headers:custom_headers).value!
    end

    #
    # Returns the BitLocker Keys for all drives in the specified job.
    #
    # @param job_name [String] The name of the import/export job.
    # @param resource_group_name [String] The resource group name uniquely
    # identifies the resource group within the user subscription.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(job_name, resource_group_name, custom_headers:nil)
      fail ArgumentError, 'job_name is nil' if job_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      @client.api_version = '2016-11-01'


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['Accept-Language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ImportExport/jobs/{jobName}/listBitLockerKeys'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'jobName' => job_name,'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ImportExport::Mgmt::V2016_11_01::Models::GetBitLockerKeysResponse.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end