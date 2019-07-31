# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Qnamaker::V4_0
  #
  # An API for QnAMaker Service
  #
  class Operations
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Operations class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [QnamakerClient] reference to the QnamakerClient
    attr_reader :client

    #
    # Gets details of a specific long running operation.
    #
    # @param operation_id [String] Operation id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Operation] operation results.
    #
    def get_details(operation_id, custom_headers:nil)
      response = get_details_async(operation_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets details of a specific long running operation.
    #
    # @param operation_id [String] Operation id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_details_with_http_info(operation_id, custom_headers:nil)
      get_details_async(operation_id, custom_headers:custom_headers).value!
    end

    #
    # Gets details of a specific long running operation.
    #
    # @param operation_id [String] Operation id.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_details_async(operation_id, custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?
      fail ArgumentError, 'operation_id is nil' if operation_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'operations/{operationId}'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'operationId' => operation_id},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

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
            result_mapper = Azure::CognitiveServices::Qnamaker::V4_0::Models::Operation.mapper()
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
