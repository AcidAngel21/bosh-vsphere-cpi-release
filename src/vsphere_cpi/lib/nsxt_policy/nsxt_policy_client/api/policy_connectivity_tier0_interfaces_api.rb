=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 2.5.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.4

=end

require 'uri'

module NSXTPolicyClient
  class PolicyConnectivityTier0InterfacesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create or update a Tier-0 interface
    # If an interface with the interface-id is not already present, create a new interface. If it already exists, replace the interface with this object. 
    # @param tier_0_id 
    # @param locale_service_id 
    # @param interface_id 
    # @param tier0_interface 
    # @param [Hash] opts the optional parameters
    # @return [Tier0Interface]
    def create_or_replace_tier0_interface(tier_0_id, locale_service_id, interface_id, tier0_interface, opts = {})
      data, _status_code, _headers = create_or_replace_tier0_interface_with_http_info(tier_0_id, locale_service_id, interface_id, tier0_interface, opts)
      data
    end

    # Create or update a Tier-0 interface
    # If an interface with the interface-id is not already present, create a new interface. If it already exists, replace the interface with this object. 
    # @param tier_0_id 
    # @param locale_service_id 
    # @param interface_id 
    # @param tier0_interface 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Tier0Interface, Fixnum, Hash)>] Tier0Interface data, response status code and response headers
    def create_or_replace_tier0_interface_with_http_info(tier_0_id, locale_service_id, interface_id, tier0_interface, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyConnectivityTier0InterfacesApi.create_or_replace_tier0_interface ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyConnectivityTier0InterfacesApi.create_or_replace_tier0_interface"
      end
      # verify the required parameter 'locale_service_id' is set
      if @api_client.config.client_side_validation && locale_service_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_service_id' when calling PolicyConnectivityTier0InterfacesApi.create_or_replace_tier0_interface"
      end
      # verify the required parameter 'interface_id' is set
      if @api_client.config.client_side_validation && interface_id.nil?
        fail ArgumentError, "Missing the required parameter 'interface_id' when calling PolicyConnectivityTier0InterfacesApi.create_or_replace_tier0_interface"
      end
      # verify the required parameter 'tier0_interface' is set
      if @api_client.config.client_side_validation && tier0_interface.nil?
        fail ArgumentError, "Missing the required parameter 'tier0_interface' when calling PolicyConnectivityTier0InterfacesApi.create_or_replace_tier0_interface"
      end
      # resource path
      local_var_path = '/infra/tier-0s/{tier-0-id}/locale-services/{locale-service-id}/interfaces/{interface-id}'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s).sub('{' + 'locale-service-id' + '}', locale_service_id.to_s).sub('{' + 'interface-id' + '}', interface_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(tier0_interface)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Tier0Interface')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyConnectivityTier0InterfacesApi#create_or_replace_tier0_interface\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete service interface
    # Delete service interface
    # @param tier_0_id 
    # @param locale_service_id 
    # @param interface_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_service_interface(tier_0_id, locale_service_id, interface_id, opts = {})
      delete_service_interface_with_http_info(tier_0_id, locale_service_id, interface_id, opts)
      nil
    end

    # Delete service interface
    # Delete service interface
    # @param tier_0_id 
    # @param locale_service_id 
    # @param interface_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_service_interface_with_http_info(tier_0_id, locale_service_id, interface_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyConnectivityTier0InterfacesApi.delete_service_interface ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyConnectivityTier0InterfacesApi.delete_service_interface"
      end
      # verify the required parameter 'locale_service_id' is set
      if @api_client.config.client_side_validation && locale_service_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_service_id' when calling PolicyConnectivityTier0InterfacesApi.delete_service_interface"
      end
      # verify the required parameter 'interface_id' is set
      if @api_client.config.client_side_validation && interface_id.nil?
        fail ArgumentError, "Missing the required parameter 'interface_id' when calling PolicyConnectivityTier0InterfacesApi.delete_service_interface"
      end
      # resource path
      local_var_path = '/infra/tier-0s/{tier-0-id}/locale-services/{locale-service-id}/service-interfaces/{interface-id}'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s).sub('{' + 'locale-service-id' + '}', locale_service_id.to_s).sub('{' + 'interface-id' + '}', interface_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyConnectivityTier0InterfacesApi#delete_service_interface\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete Tier-0 interface
    # Delete Tier-0 interface
    # @param tier_0_id 
    # @param locale_service_id 
    # @param interface_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_tier0_interface(tier_0_id, locale_service_id, interface_id, opts = {})
      delete_tier0_interface_with_http_info(tier_0_id, locale_service_id, interface_id, opts)
      nil
    end

    # Delete Tier-0 interface
    # Delete Tier-0 interface
    # @param tier_0_id 
    # @param locale_service_id 
    # @param interface_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_tier0_interface_with_http_info(tier_0_id, locale_service_id, interface_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyConnectivityTier0InterfacesApi.delete_tier0_interface ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyConnectivityTier0InterfacesApi.delete_tier0_interface"
      end
      # verify the required parameter 'locale_service_id' is set
      if @api_client.config.client_side_validation && locale_service_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_service_id' when calling PolicyConnectivityTier0InterfacesApi.delete_tier0_interface"
      end
      # verify the required parameter 'interface_id' is set
      if @api_client.config.client_side_validation && interface_id.nil?
        fail ArgumentError, "Missing the required parameter 'interface_id' when calling PolicyConnectivityTier0InterfacesApi.delete_tier0_interface"
      end
      # resource path
      local_var_path = '/infra/tier-0s/{tier-0-id}/locale-services/{locale-service-id}/interfaces/{interface-id}'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s).sub('{' + 'locale-service-id' + '}', locale_service_id.to_s).sub('{' + 'interface-id' + '}', interface_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyConnectivityTier0InterfacesApi#delete_tier0_interface\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Service Interfaces
    # Paginated list of all Service Interfaces 
    # @param tier_0_id 
    # @param locale_service_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [ServiceInterfaceListResult]
    def list_service_interfaces(tier_0_id, locale_service_id, opts = {})
      data, _status_code, _headers = list_service_interfaces_with_http_info(tier_0_id, locale_service_id, opts)
      data
    end

    # List Service Interfaces
    # Paginated list of all Service Interfaces 
    # @param tier_0_id 
    # @param locale_service_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(ServiceInterfaceListResult, Fixnum, Hash)>] ServiceInterfaceListResult data, response status code and response headers
    def list_service_interfaces_with_http_info(tier_0_id, locale_service_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyConnectivityTier0InterfacesApi.list_service_interfaces ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyConnectivityTier0InterfacesApi.list_service_interfaces"
      end
      # verify the required parameter 'locale_service_id' is set
      if @api_client.config.client_side_validation && locale_service_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_service_id' when calling PolicyConnectivityTier0InterfacesApi.list_service_interfaces"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyConnectivityTier0InterfacesApi.list_service_interfaces, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyConnectivityTier0InterfacesApi.list_service_interfaces, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/infra/tier-0s/{tier-0-id}/locale-services/{locale-service-id}/service-interfaces'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s).sub('{' + 'locale-service-id' + '}', locale_service_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'include_mark_for_delete_objects'] = opts[:'include_mark_for_delete_objects'] if !opts[:'include_mark_for_delete_objects'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ServiceInterfaceListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyConnectivityTier0InterfacesApi#list_service_interfaces\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List Tier-0 Interfaces
    # Paginated list of all Tier-0 Interfaces 
    # @param tier_0_id 
    # @param locale_service_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Tier0InterfaceListResult]
    def list_tier0_interfaces(tier_0_id, locale_service_id, opts = {})
      data, _status_code, _headers = list_tier0_interfaces_with_http_info(tier_0_id, locale_service_id, opts)
      data
    end

    # List Tier-0 Interfaces
    # Paginated list of all Tier-0 Interfaces 
    # @param tier_0_id 
    # @param locale_service_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(Tier0InterfaceListResult, Fixnum, Hash)>] Tier0InterfaceListResult data, response status code and response headers
    def list_tier0_interfaces_with_http_info(tier_0_id, locale_service_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyConnectivityTier0InterfacesApi.list_tier0_interfaces ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyConnectivityTier0InterfacesApi.list_tier0_interfaces"
      end
      # verify the required parameter 'locale_service_id' is set
      if @api_client.config.client_side_validation && locale_service_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_service_id' when calling PolicyConnectivityTier0InterfacesApi.list_tier0_interfaces"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyConnectivityTier0InterfacesApi.list_tier0_interfaces, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyConnectivityTier0InterfacesApi.list_tier0_interfaces, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/infra/tier-0s/{tier-0-id}/locale-services/{locale-service-id}/interfaces'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s).sub('{' + 'locale-service-id' + '}', locale_service_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'include_mark_for_delete_objects'] = opts[:'include_mark_for_delete_objects'] if !opts[:'include_mark_for_delete_objects'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Tier0InterfaceListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyConnectivityTier0InterfacesApi#list_tier0_interfaces\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update a Tier-0 interface
    # If an interface with the interface-id is not already present, create a new interface. If it already exists, update the interface for specified attributes. 
    # @param tier_0_id 
    # @param locale_service_id 
    # @param interface_id 
    # @param service_interface 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def patch_service_interface(tier_0_id, locale_service_id, interface_id, service_interface, opts = {})
      patch_service_interface_with_http_info(tier_0_id, locale_service_id, interface_id, service_interface, opts)
      nil
    end

    # Create or update a Tier-0 interface
    # If an interface with the interface-id is not already present, create a new interface. If it already exists, update the interface for specified attributes. 
    # @param tier_0_id 
    # @param locale_service_id 
    # @param interface_id 
    # @param service_interface 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_service_interface_with_http_info(tier_0_id, locale_service_id, interface_id, service_interface, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyConnectivityTier0InterfacesApi.patch_service_interface ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyConnectivityTier0InterfacesApi.patch_service_interface"
      end
      # verify the required parameter 'locale_service_id' is set
      if @api_client.config.client_side_validation && locale_service_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_service_id' when calling PolicyConnectivityTier0InterfacesApi.patch_service_interface"
      end
      # verify the required parameter 'interface_id' is set
      if @api_client.config.client_side_validation && interface_id.nil?
        fail ArgumentError, "Missing the required parameter 'interface_id' when calling PolicyConnectivityTier0InterfacesApi.patch_service_interface"
      end
      # verify the required parameter 'service_interface' is set
      if @api_client.config.client_side_validation && service_interface.nil?
        fail ArgumentError, "Missing the required parameter 'service_interface' when calling PolicyConnectivityTier0InterfacesApi.patch_service_interface"
      end
      # resource path
      local_var_path = '/infra/tier-0s/{tier-0-id}/locale-services/{locale-service-id}/service-interfaces/{interface-id}'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s).sub('{' + 'locale-service-id' + '}', locale_service_id.to_s).sub('{' + 'interface-id' + '}', interface_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(service_interface)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyConnectivityTier0InterfacesApi#patch_service_interface\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update a Tier-0 interface
    # If an interface with the interface-id is not already present, create a new interface. If it already exists, update the interface for specified attributes. 
    # @param tier_0_id 
    # @param locale_service_id 
    # @param interface_id 
    # @param tier0_interface 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def patch_tier0_interface(tier_0_id, locale_service_id, interface_id, tier0_interface, opts = {})
      patch_tier0_interface_with_http_info(tier_0_id, locale_service_id, interface_id, tier0_interface, opts)
      nil
    end

    # Create or update a Tier-0 interface
    # If an interface with the interface-id is not already present, create a new interface. If it already exists, update the interface for specified attributes. 
    # @param tier_0_id 
    # @param locale_service_id 
    # @param interface_id 
    # @param tier0_interface 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_tier0_interface_with_http_info(tier_0_id, locale_service_id, interface_id, tier0_interface, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyConnectivityTier0InterfacesApi.patch_tier0_interface ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyConnectivityTier0InterfacesApi.patch_tier0_interface"
      end
      # verify the required parameter 'locale_service_id' is set
      if @api_client.config.client_side_validation && locale_service_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_service_id' when calling PolicyConnectivityTier0InterfacesApi.patch_tier0_interface"
      end
      # verify the required parameter 'interface_id' is set
      if @api_client.config.client_side_validation && interface_id.nil?
        fail ArgumentError, "Missing the required parameter 'interface_id' when calling PolicyConnectivityTier0InterfacesApi.patch_tier0_interface"
      end
      # verify the required parameter 'tier0_interface' is set
      if @api_client.config.client_side_validation && tier0_interface.nil?
        fail ArgumentError, "Missing the required parameter 'tier0_interface' when calling PolicyConnectivityTier0InterfacesApi.patch_tier0_interface"
      end
      # resource path
      local_var_path = '/infra/tier-0s/{tier-0-id}/locale-services/{locale-service-id}/interfaces/{interface-id}'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s).sub('{' + 'locale-service-id' + '}', locale_service_id.to_s).sub('{' + 'interface-id' + '}', interface_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(tier0_interface)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyConnectivityTier0InterfacesApi#patch_tier0_interface\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read service interface
    # Read service interface
    # @param tier_0_id 
    # @param locale_service_id 
    # @param interface_id 
    # @param [Hash] opts the optional parameters
    # @return [ServiceInterface]
    def read_service_interface(tier_0_id, locale_service_id, interface_id, opts = {})
      data, _status_code, _headers = read_service_interface_with_http_info(tier_0_id, locale_service_id, interface_id, opts)
      data
    end

    # Read service interface
    # Read service interface
    # @param tier_0_id 
    # @param locale_service_id 
    # @param interface_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ServiceInterface, Fixnum, Hash)>] ServiceInterface data, response status code and response headers
    def read_service_interface_with_http_info(tier_0_id, locale_service_id, interface_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyConnectivityTier0InterfacesApi.read_service_interface ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyConnectivityTier0InterfacesApi.read_service_interface"
      end
      # verify the required parameter 'locale_service_id' is set
      if @api_client.config.client_side_validation && locale_service_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_service_id' when calling PolicyConnectivityTier0InterfacesApi.read_service_interface"
      end
      # verify the required parameter 'interface_id' is set
      if @api_client.config.client_side_validation && interface_id.nil?
        fail ArgumentError, "Missing the required parameter 'interface_id' when calling PolicyConnectivityTier0InterfacesApi.read_service_interface"
      end
      # resource path
      local_var_path = '/infra/tier-0s/{tier-0-id}/locale-services/{locale-service-id}/service-interfaces/{interface-id}'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s).sub('{' + 'locale-service-id' + '}', locale_service_id.to_s).sub('{' + 'interface-id' + '}', interface_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ServiceInterface')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyConnectivityTier0InterfacesApi#read_service_interface\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read Tier-0 interface
    # Read Tier-0 interface
    # @param tier_0_id 
    # @param locale_service_id 
    # @param interface_id 
    # @param [Hash] opts the optional parameters
    # @return [Tier0Interface]
    def read_tier0_interface(tier_0_id, locale_service_id, interface_id, opts = {})
      data, _status_code, _headers = read_tier0_interface_with_http_info(tier_0_id, locale_service_id, interface_id, opts)
      data
    end

    # Read Tier-0 interface
    # Read Tier-0 interface
    # @param tier_0_id 
    # @param locale_service_id 
    # @param interface_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Tier0Interface, Fixnum, Hash)>] Tier0Interface data, response status code and response headers
    def read_tier0_interface_with_http_info(tier_0_id, locale_service_id, interface_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyConnectivityTier0InterfacesApi.read_tier0_interface ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyConnectivityTier0InterfacesApi.read_tier0_interface"
      end
      # verify the required parameter 'locale_service_id' is set
      if @api_client.config.client_side_validation && locale_service_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_service_id' when calling PolicyConnectivityTier0InterfacesApi.read_tier0_interface"
      end
      # verify the required parameter 'interface_id' is set
      if @api_client.config.client_side_validation && interface_id.nil?
        fail ArgumentError, "Missing the required parameter 'interface_id' when calling PolicyConnectivityTier0InterfacesApi.read_tier0_interface"
      end
      # resource path
      local_var_path = '/infra/tier-0s/{tier-0-id}/locale-services/{locale-service-id}/interfaces/{interface-id}'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s).sub('{' + 'locale-service-id' + '}', locale_service_id.to_s).sub('{' + 'interface-id' + '}', interface_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Tier0Interface')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyConnectivityTier0InterfacesApi#read_tier0_interface\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
