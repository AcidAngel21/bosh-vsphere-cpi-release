=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 2.5.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.4

=end

require 'uri'

module NSXTPolicyClient
  class PolicyProfilesDnsSecurityProfileBindingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete DNS security profile binding map
    # API will delete DNS security profile binding map
    # @param domain_id Domain ID
    # @param group_id Group ID
    # @param dns_security_profile_binding_map_id DNS security profile binding map ID
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_dns_security_profile_binding(domain_id, group_id, dns_security_profile_binding_map_id, opts = {})
      delete_dns_security_profile_binding_with_http_info(domain_id, group_id, dns_security_profile_binding_map_id, opts)
      nil
    end

    # Delete DNS security profile binding map
    # API will delete DNS security profile binding map
    # @param domain_id Domain ID
    # @param group_id Group ID
    # @param dns_security_profile_binding_map_id DNS security profile binding map ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_dns_security_profile_binding_with_http_info(domain_id, group_id, dns_security_profile_binding_map_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyProfilesDnsSecurityProfileBindingApi.delete_dns_security_profile_binding ...'
      end
      # verify the required parameter 'domain_id' is set
      if @api_client.config.client_side_validation && domain_id.nil?
        fail ArgumentError, "Missing the required parameter 'domain_id' when calling PolicyProfilesDnsSecurityProfileBindingApi.delete_dns_security_profile_binding"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling PolicyProfilesDnsSecurityProfileBindingApi.delete_dns_security_profile_binding"
      end
      # verify the required parameter 'dns_security_profile_binding_map_id' is set
      if @api_client.config.client_side_validation && dns_security_profile_binding_map_id.nil?
        fail ArgumentError, "Missing the required parameter 'dns_security_profile_binding_map_id' when calling PolicyProfilesDnsSecurityProfileBindingApi.delete_dns_security_profile_binding"
      end
      # resource path
      local_var_path = '/infra/domains/{domain-id}/groups/{group-id}/dns-security-profile-binding-maps/{dns-security-profile-binding-map-id}'.sub('{' + 'domain-id' + '}', domain_id.to_s).sub('{' + 'group-id' + '}', group_id.to_s).sub('{' + 'dns-security-profile-binding-map-id' + '}', dns_security_profile_binding_map_id.to_s)

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
        @api_client.config.logger.debug "API called: PolicyProfilesDnsSecurityProfileBindingApi#delete_dns_security_profile_binding\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get DNS security profile binding map
    # API will get DNS security profile binding map
    # @param domain_id Domain ID
    # @param group_id Group ID
    # @param dns_security_profile_binding_map_id DNS security profile binding map ID
    # @param [Hash] opts the optional parameters
    # @return [DnsSecurityProfileBindingMap]
    def get_dns_security_profile_binding(domain_id, group_id, dns_security_profile_binding_map_id, opts = {})
      data, _status_code, _headers = get_dns_security_profile_binding_with_http_info(domain_id, group_id, dns_security_profile_binding_map_id, opts)
      data
    end

    # Get DNS security profile binding map
    # API will get DNS security profile binding map
    # @param domain_id Domain ID
    # @param group_id Group ID
    # @param dns_security_profile_binding_map_id DNS security profile binding map ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(DnsSecurityProfileBindingMap, Fixnum, Hash)>] DnsSecurityProfileBindingMap data, response status code and response headers
    def get_dns_security_profile_binding_with_http_info(domain_id, group_id, dns_security_profile_binding_map_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyProfilesDnsSecurityProfileBindingApi.get_dns_security_profile_binding ...'
      end
      # verify the required parameter 'domain_id' is set
      if @api_client.config.client_side_validation && domain_id.nil?
        fail ArgumentError, "Missing the required parameter 'domain_id' when calling PolicyProfilesDnsSecurityProfileBindingApi.get_dns_security_profile_binding"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling PolicyProfilesDnsSecurityProfileBindingApi.get_dns_security_profile_binding"
      end
      # verify the required parameter 'dns_security_profile_binding_map_id' is set
      if @api_client.config.client_side_validation && dns_security_profile_binding_map_id.nil?
        fail ArgumentError, "Missing the required parameter 'dns_security_profile_binding_map_id' when calling PolicyProfilesDnsSecurityProfileBindingApi.get_dns_security_profile_binding"
      end
      # resource path
      local_var_path = '/infra/domains/{domain-id}/groups/{group-id}/dns-security-profile-binding-maps/{dns-security-profile-binding-map-id}'.sub('{' + 'domain-id' + '}', domain_id.to_s).sub('{' + 'group-id' + '}', group_id.to_s).sub('{' + 'dns-security-profile-binding-map-id' + '}', dns_security_profile_binding_map_id.to_s)

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
        :return_type => 'DnsSecurityProfileBindingMap')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyProfilesDnsSecurityProfileBindingApi#get_dns_security_profile_binding\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get DNS security profile binding map
    # API will get DNS security profile binding map
    # @param domain_id 
    # @param group_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [DnsSecurityProfileBindingMapListResult]
    def list_dns_security_profile_bindings(domain_id, group_id, opts = {})
      data, _status_code, _headers = list_dns_security_profile_bindings_with_http_info(domain_id, group_id, opts)
      data
    end

    # Get DNS security profile binding map
    # API will get DNS security profile binding map
    # @param domain_id 
    # @param group_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(DnsSecurityProfileBindingMapListResult, Fixnum, Hash)>] DnsSecurityProfileBindingMapListResult data, response status code and response headers
    def list_dns_security_profile_bindings_with_http_info(domain_id, group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyProfilesDnsSecurityProfileBindingApi.list_dns_security_profile_bindings ...'
      end
      # verify the required parameter 'domain_id' is set
      if @api_client.config.client_side_validation && domain_id.nil?
        fail ArgumentError, "Missing the required parameter 'domain_id' when calling PolicyProfilesDnsSecurityProfileBindingApi.list_dns_security_profile_bindings"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling PolicyProfilesDnsSecurityProfileBindingApi.list_dns_security_profile_bindings"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyProfilesDnsSecurityProfileBindingApi.list_dns_security_profile_bindings, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyProfilesDnsSecurityProfileBindingApi.list_dns_security_profile_bindings, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/infra/domains/{domain-id}/groups/{group-id}/dns-security-profile-binding-maps'.sub('{' + 'domain-id' + '}', domain_id.to_s).sub('{' + 'group-id' + '}', group_id.to_s)

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
        :return_type => 'DnsSecurityProfileBindingMapListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyProfilesDnsSecurityProfileBindingApi#list_dns_security_profile_bindings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update DNS security profile binding map
    # API will create or update DNS security profile binding map
    # @param domain_id Domain ID
    # @param group_id Group ID
    # @param dns_security_profile_binding_map_id DNS security profile binding map ID
    # @param dns_security_profile_binding_map 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def patch_dns_security_profile_binding(domain_id, group_id, dns_security_profile_binding_map_id, dns_security_profile_binding_map, opts = {})
      patch_dns_security_profile_binding_with_http_info(domain_id, group_id, dns_security_profile_binding_map_id, dns_security_profile_binding_map, opts)
      nil
    end

    # Create or update DNS security profile binding map
    # API will create or update DNS security profile binding map
    # @param domain_id Domain ID
    # @param group_id Group ID
    # @param dns_security_profile_binding_map_id DNS security profile binding map ID
    # @param dns_security_profile_binding_map 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_dns_security_profile_binding_with_http_info(domain_id, group_id, dns_security_profile_binding_map_id, dns_security_profile_binding_map, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyProfilesDnsSecurityProfileBindingApi.patch_dns_security_profile_binding ...'
      end
      # verify the required parameter 'domain_id' is set
      if @api_client.config.client_side_validation && domain_id.nil?
        fail ArgumentError, "Missing the required parameter 'domain_id' when calling PolicyProfilesDnsSecurityProfileBindingApi.patch_dns_security_profile_binding"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling PolicyProfilesDnsSecurityProfileBindingApi.patch_dns_security_profile_binding"
      end
      # verify the required parameter 'dns_security_profile_binding_map_id' is set
      if @api_client.config.client_side_validation && dns_security_profile_binding_map_id.nil?
        fail ArgumentError, "Missing the required parameter 'dns_security_profile_binding_map_id' when calling PolicyProfilesDnsSecurityProfileBindingApi.patch_dns_security_profile_binding"
      end
      # verify the required parameter 'dns_security_profile_binding_map' is set
      if @api_client.config.client_side_validation && dns_security_profile_binding_map.nil?
        fail ArgumentError, "Missing the required parameter 'dns_security_profile_binding_map' when calling PolicyProfilesDnsSecurityProfileBindingApi.patch_dns_security_profile_binding"
      end
      # resource path
      local_var_path = '/infra/domains/{domain-id}/groups/{group-id}/dns-security-profile-binding-maps/{dns-security-profile-binding-map-id}'.sub('{' + 'domain-id' + '}', domain_id.to_s).sub('{' + 'group-id' + '}', group_id.to_s).sub('{' + 'dns-security-profile-binding-map-id' + '}', dns_security_profile_binding_map_id.to_s)

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
      post_body = @api_client.object_to_http_body(dns_security_profile_binding_map)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyProfilesDnsSecurityProfileBindingApi#patch_dns_security_profile_binding\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update DNS security profile binding map
    # API will update DNS security profile binding map
    # @param domain_id Domain ID
    # @param group_id Group ID
    # @param dns_security_profile_binding_map_id DNS security profile binding map ID
    # @param dns_security_profile_binding_map 
    # @param [Hash] opts the optional parameters
    # @return [DnsSecurityProfileBindingMap]
    def update_dns_security_profile_binding(domain_id, group_id, dns_security_profile_binding_map_id, dns_security_profile_binding_map, opts = {})
      data, _status_code, _headers = update_dns_security_profile_binding_with_http_info(domain_id, group_id, dns_security_profile_binding_map_id, dns_security_profile_binding_map, opts)
      data
    end

    # Update DNS security profile binding map
    # API will update DNS security profile binding map
    # @param domain_id Domain ID
    # @param group_id Group ID
    # @param dns_security_profile_binding_map_id DNS security profile binding map ID
    # @param dns_security_profile_binding_map 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DnsSecurityProfileBindingMap, Fixnum, Hash)>] DnsSecurityProfileBindingMap data, response status code and response headers
    def update_dns_security_profile_binding_with_http_info(domain_id, group_id, dns_security_profile_binding_map_id, dns_security_profile_binding_map, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyProfilesDnsSecurityProfileBindingApi.update_dns_security_profile_binding ...'
      end
      # verify the required parameter 'domain_id' is set
      if @api_client.config.client_side_validation && domain_id.nil?
        fail ArgumentError, "Missing the required parameter 'domain_id' when calling PolicyProfilesDnsSecurityProfileBindingApi.update_dns_security_profile_binding"
      end
      # verify the required parameter 'group_id' is set
      if @api_client.config.client_side_validation && group_id.nil?
        fail ArgumentError, "Missing the required parameter 'group_id' when calling PolicyProfilesDnsSecurityProfileBindingApi.update_dns_security_profile_binding"
      end
      # verify the required parameter 'dns_security_profile_binding_map_id' is set
      if @api_client.config.client_side_validation && dns_security_profile_binding_map_id.nil?
        fail ArgumentError, "Missing the required parameter 'dns_security_profile_binding_map_id' when calling PolicyProfilesDnsSecurityProfileBindingApi.update_dns_security_profile_binding"
      end
      # verify the required parameter 'dns_security_profile_binding_map' is set
      if @api_client.config.client_side_validation && dns_security_profile_binding_map.nil?
        fail ArgumentError, "Missing the required parameter 'dns_security_profile_binding_map' when calling PolicyProfilesDnsSecurityProfileBindingApi.update_dns_security_profile_binding"
      end
      # resource path
      local_var_path = '/infra/domains/{domain-id}/groups/{group-id}/dns-security-profile-binding-maps/{dns-security-profile-binding-map-id}'.sub('{' + 'domain-id' + '}', domain_id.to_s).sub('{' + 'group-id' + '}', group_id.to_s).sub('{' + 'dns-security-profile-binding-map-id' + '}', dns_security_profile_binding_map_id.to_s)

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
      post_body = @api_client.object_to_http_body(dns_security_profile_binding_map)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DnsSecurityProfileBindingMap')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyProfilesDnsSecurityProfileBindingApi#update_dns_security_profile_binding\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
