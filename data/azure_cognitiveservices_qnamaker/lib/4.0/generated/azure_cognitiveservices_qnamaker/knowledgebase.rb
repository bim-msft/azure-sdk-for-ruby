# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Qnamaker::V4_0
  #
  # An API for QnAMaker Service
  #
  class Knowledgebase
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Knowledgebase class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [QnamakerClient] reference to the QnamakerClient
    attr_reader :client

    #
    # Gets all knowledgebases for a user.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [KnowledgebasesDTO] operation results.
    #
    def list_all(custom_headers:nil)
      response = list_all_async(custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets all knowledgebases for a user.
    #
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_all_with_http_info(custom_headers:nil)
      list_all_async(custom_headers:custom_headers).value!
    end

    #
    # Gets all knowledgebases for a user.
    #
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_all_async(custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'knowledgebases'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
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
            result_mapper = Azure::CognitiveServices::Qnamaker::V4_0::Models::KnowledgebasesDTO.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets details of a specific knowledgebase.
    #
    # @param kb_id [String] Knowledgebase id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [KnowledgebaseDTO] operation results.
    #
    def get_details(kb_id, custom_headers:nil)
      response = get_details_async(kb_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets details of a specific knowledgebase.
    #
    # @param kb_id [String] Knowledgebase id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_details_with_http_info(kb_id, custom_headers:nil)
      get_details_async(kb_id, custom_headers:custom_headers).value!
    end

    #
    # Gets details of a specific knowledgebase.
    #
    # @param kb_id [String] Knowledgebase id.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_details_async(kb_id, custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?
      fail ArgumentError, 'kb_id is nil' if kb_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'knowledgebases/{kbId}'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'kbId' => kb_id},
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
            result_mapper = Azure::CognitiveServices::Qnamaker::V4_0::Models::KnowledgebaseDTO.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Deletes the knowledgebase and all its data.
    #
    # @param kb_id [String] Knowledgebase id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(kb_id, custom_headers:nil)
      response = delete_async(kb_id, custom_headers:custom_headers).value!
      nil
    end

    #
    # Deletes the knowledgebase and all its data.
    #
    # @param kb_id [String] Knowledgebase id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(kb_id, custom_headers:nil)
      delete_async(kb_id, custom_headers:custom_headers).value!
    end

    #
    # Deletes the knowledgebase and all its data.
    #
    # @param kb_id [String] Knowledgebase id.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(kb_id, custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?
      fail ArgumentError, 'kb_id is nil' if kb_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'knowledgebases/{kbId}'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'kbId' => kb_id},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Publishes all changes in test index of a knowledgebase to its prod index.
    #
    # @param kb_id [String] Knowledgebase id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def publish(kb_id, custom_headers:nil)
      response = publish_async(kb_id, custom_headers:custom_headers).value!
      nil
    end

    #
    # Publishes all changes in test index of a knowledgebase to its prod index.
    #
    # @param kb_id [String] Knowledgebase id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def publish_with_http_info(kb_id, custom_headers:nil)
      publish_async(kb_id, custom_headers:custom_headers).value!
    end

    #
    # Publishes all changes in test index of a knowledgebase to its prod index.
    #
    # @param kb_id [String] Knowledgebase id.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def publish_async(kb_id, custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?
      fail ArgumentError, 'kb_id is nil' if kb_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'knowledgebases/{kbId}'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'kbId' => kb_id},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Replace knowledgebase contents.
    #
    # @param kb_id [String] Knowledgebase id.
    # @param replace_kb [ReplaceKbDTO] An instance of ReplaceKbDTO which contains
    # list of qnas to be uploaded
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def replace(kb_id, replace_kb, custom_headers:nil)
      response = replace_async(kb_id, replace_kb, custom_headers:custom_headers).value!
      nil
    end

    #
    # Replace knowledgebase contents.
    #
    # @param kb_id [String] Knowledgebase id.
    # @param replace_kb [ReplaceKbDTO] An instance of ReplaceKbDTO which contains
    # list of qnas to be uploaded
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def replace_with_http_info(kb_id, replace_kb, custom_headers:nil)
      replace_async(kb_id, replace_kb, custom_headers:custom_headers).value!
    end

    #
    # Replace knowledgebase contents.
    #
    # @param kb_id [String] Knowledgebase id.
    # @param replace_kb [ReplaceKbDTO] An instance of ReplaceKbDTO which contains
    # list of qnas to be uploaded
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def replace_async(kb_id, replace_kb, custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?
      fail ArgumentError, 'kb_id is nil' if kb_id.nil?
      fail ArgumentError, 'replace_kb is nil' if replace_kb.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CognitiveServices::Qnamaker::V4_0::Models::ReplaceKbDTO.mapper()
      request_content = @client.serialize(request_mapper,  replace_kb)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'knowledgebases/{kbId}'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'kbId' => kb_id},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 204
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Asynchronous operation to modify a knowledgebase.
    #
    # @param kb_id [String] Knowledgebase id.
    # @param update_kb [UpdateKbOperationDTO] Post body of the request.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Operation] operation results.
    #
    def update(kb_id, update_kb, custom_headers:nil)
      response = update_async(kb_id, update_kb, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Asynchronous operation to modify a knowledgebase.
    #
    # @param kb_id [String] Knowledgebase id.
    # @param update_kb [UpdateKbOperationDTO] Post body of the request.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def update_with_http_info(kb_id, update_kb, custom_headers:nil)
      update_async(kb_id, update_kb, custom_headers:custom_headers).value!
    end

    #
    # Asynchronous operation to modify a knowledgebase.
    #
    # @param kb_id [String] Knowledgebase id.
    # @param update_kb [UpdateKbOperationDTO] Post body of the request.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_async(kb_id, update_kb, custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?
      fail ArgumentError, 'kb_id is nil' if kb_id.nil?
      fail ArgumentError, 'update_kb is nil' if update_kb.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CognitiveServices::Qnamaker::V4_0::Models::UpdateKbOperationDTO.mapper()
      request_content = @client.serialize(request_mapper,  update_kb)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'knowledgebases/{kbId}'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'kbId' => kb_id},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:patch, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 202
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

    #
    # Asynchronous operation to create a new knowledgebase.
    #
    # @param create_kb_payload [CreateKbDTO] Post body of the request.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Operation] operation results.
    #
    def create(create_kb_payload, custom_headers:nil)
      response = create_async(create_kb_payload, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Asynchronous operation to create a new knowledgebase.
    #
    # @param create_kb_payload [CreateKbDTO] Post body of the request.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_with_http_info(create_kb_payload, custom_headers:nil)
      create_async(create_kb_payload, custom_headers:custom_headers).value!
    end

    #
    # Asynchronous operation to create a new knowledgebase.
    #
    # @param create_kb_payload [CreateKbDTO] Post body of the request.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_async(create_kb_payload, custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?
      fail ArgumentError, 'create_kb_payload is nil' if create_kb_payload.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CognitiveServices::Qnamaker::V4_0::Models::CreateKbDTO.mapper()
      request_content = @client.serialize(request_mapper,  create_kb_payload)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'knowledgebases/create'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 202
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

    #
    # Download the knowledgebase.
    #
    # @param kb_id [String] Knowledgebase id.
    # @param environment [EnvironmentType] Specifies whether environment is Test or
    # Prod. Possible values include: 'Prod', 'Test'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [QnADocumentsDTO] operation results.
    #
    def download(kb_id, environment, custom_headers:nil)
      response = download_async(kb_id, environment, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Download the knowledgebase.
    #
    # @param kb_id [String] Knowledgebase id.
    # @param environment [EnvironmentType] Specifies whether environment is Test or
    # Prod. Possible values include: 'Prod', 'Test'
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def download_with_http_info(kb_id, environment, custom_headers:nil)
      download_async(kb_id, environment, custom_headers:custom_headers).value!
    end

    #
    # Download the knowledgebase.
    #
    # @param kb_id [String] Knowledgebase id.
    # @param environment [EnvironmentType] Specifies whether environment is Test or
    # Prod. Possible values include: 'Prod', 'Test'
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def download_async(kb_id, environment, custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?
      fail ArgumentError, 'kb_id is nil' if kb_id.nil?
      fail ArgumentError, 'environment is nil' if environment.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'knowledgebases/{kbId}/{environment}/qna'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'kbId' => kb_id,'environment' => environment},
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
            result_mapper = Azure::CognitiveServices::Qnamaker::V4_0::Models::QnADocumentsDTO.mapper()
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
