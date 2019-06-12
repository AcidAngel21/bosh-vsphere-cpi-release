=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 2.5.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.4

=end

require 'uri'

module NSXTPolicyClient
  class PolicyTlsCrlsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create or patch a Certificate Revocation List
    # Create or patch a Certificate Revocation List for the given id. The CRL is used to verify the client certificate status against the revocation lists published by the CA. For this reason, the administrator needs to add the CRL in certificate repository as well. The CRL must contain PEM data for a single CRL. 
    # @param crl_id 
    # @param tls_crl 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create_or_patch_tls_crl(crl_id, tls_crl, opts = {})
      create_or_patch_tls_crl_with_http_info(crl_id, tls_crl, opts)
      nil
    end

    # Create or patch a Certificate Revocation List
    # Create or patch a Certificate Revocation List for the given id. The CRL is used to verify the client certificate status against the revocation lists published by the CA. For this reason, the administrator needs to add the CRL in certificate repository as well. The CRL must contain PEM data for a single CRL. 
    # @param crl_id 
    # @param tls_crl 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_or_patch_tls_crl_with_http_info(crl_id, tls_crl, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyTlsCrlsApi.create_or_patch_tls_crl ...'
      end
      # verify the required parameter 'crl_id' is set
      if @api_client.config.client_side_validation && crl_id.nil?
        fail ArgumentError, "Missing the required parameter 'crl_id' when calling PolicyTlsCrlsApi.create_or_patch_tls_crl"
      end
      # verify the required parameter 'tls_crl' is set
      if @api_client.config.client_side_validation && tls_crl.nil?
        fail ArgumentError, "Missing the required parameter 'tls_crl' when calling PolicyTlsCrlsApi.create_or_patch_tls_crl"
      end
      # resource path
      local_var_path = '/infra/crls/{crl-id}'.sub('{' + 'crl-id' + '}', crl_id.to_s)

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
      post_body = @api_client.object_to_http_body(tls_crl)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyTlsCrlsApi#create_or_patch_tls_crl\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or fully replace a Certificate Revocation List
    # Create or replace a Certificate Revocation List for the given id. The CRL is used to verify the client certificate status against the revocation lists published by the CA. For this reason, the administrator needs to add the CRL in certificate repository as well. The CRL must contain PEM data for a single CRL. Revision is required. 
    # @param crl_id 
    # @param tls_crl 
    # @param [Hash] opts the optional parameters
    # @return [TlsCrl]
    def create_or_update_tls_crl(crl_id, tls_crl, opts = {})
      data, _status_code, _headers = create_or_update_tls_crl_with_http_info(crl_id, tls_crl, opts)
      data
    end

    # Create or fully replace a Certificate Revocation List
    # Create or replace a Certificate Revocation List for the given id. The CRL is used to verify the client certificate status against the revocation lists published by the CA. For this reason, the administrator needs to add the CRL in certificate repository as well. The CRL must contain PEM data for a single CRL. Revision is required. 
    # @param crl_id 
    # @param tls_crl 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TlsCrl, Fixnum, Hash)>] TlsCrl data, response status code and response headers
    def create_or_update_tls_crl_with_http_info(crl_id, tls_crl, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyTlsCrlsApi.create_or_update_tls_crl ...'
      end
      # verify the required parameter 'crl_id' is set
      if @api_client.config.client_side_validation && crl_id.nil?
        fail ArgumentError, "Missing the required parameter 'crl_id' when calling PolicyTlsCrlsApi.create_or_update_tls_crl"
      end
      # verify the required parameter 'tls_crl' is set
      if @api_client.config.client_side_validation && tls_crl.nil?
        fail ArgumentError, "Missing the required parameter 'tls_crl' when calling PolicyTlsCrlsApi.create_or_update_tls_crl"
      end
      # resource path
      local_var_path = '/infra/crls/{crl-id}'.sub('{' + 'crl-id' + '}', crl_id.to_s)

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
      post_body = @api_client.object_to_http_body(tls_crl)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TlsCrl')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyTlsCrlsApi#create_or_update_tls_crl\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new Certificate Revocation List
    # Adds a new certificate revocation list (CRLs). The CRL is used to verify the client certificate status against the revocation lists published by the CA. For this reason, the administrator needs to add the CRL in certificate repository as well. The CRL can contain a single CRL or multiple CRLs depending on the PEM data. - Single CRL: a single CRL is created with the given id. - Composite CRL: multiple CRLs are generated. Each of the CRL is created with an id generated based on the given id. First CRL is created with crl-id, second with crl-id-1, third with crl-id-2, etc. 
    # @param crl_id 
    # @param tls_crl 
    # @param [Hash] opts the optional parameters
    # @return [TlsCrlListResult]
    def create_tls_crl_import(crl_id, tls_crl, opts = {})
      data, _status_code, _headers = create_tls_crl_import_with_http_info(crl_id, tls_crl, opts)
      data
    end

    # Create a new Certificate Revocation List
    # Adds a new certificate revocation list (CRLs). The CRL is used to verify the client certificate status against the revocation lists published by the CA. For this reason, the administrator needs to add the CRL in certificate repository as well. The CRL can contain a single CRL or multiple CRLs depending on the PEM data. - Single CRL: a single CRL is created with the given id. - Composite CRL: multiple CRLs are generated. Each of the CRL is created with an id generated based on the given id. First CRL is created with crl-id, second with crl-id-1, third with crl-id-2, etc. 
    # @param crl_id 
    # @param tls_crl 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TlsCrlListResult, Fixnum, Hash)>] TlsCrlListResult data, response status code and response headers
    def create_tls_crl_import_with_http_info(crl_id, tls_crl, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyTlsCrlsApi.create_tls_crl_import ...'
      end
      # verify the required parameter 'crl_id' is set
      if @api_client.config.client_side_validation && crl_id.nil?
        fail ArgumentError, "Missing the required parameter 'crl_id' when calling PolicyTlsCrlsApi.create_tls_crl_import"
      end
      # verify the required parameter 'tls_crl' is set
      if @api_client.config.client_side_validation && tls_crl.nil?
        fail ArgumentError, "Missing the required parameter 'tls_crl' when calling PolicyTlsCrlsApi.create_tls_crl_import"
      end
      # resource path
      local_var_path = '/infra/crls/{crl-id}?action=import'.sub('{' + 'crl-id' + '}', crl_id.to_s)

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
      post_body = @api_client.object_to_http_body(tls_crl)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TlsCrlListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyTlsCrlsApi#create_tls_crl_import\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete a CRL
    # Deletes an existing CRL.
    # @param crl_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_tls_crl(crl_id, opts = {})
      delete_tls_crl_with_http_info(crl_id, opts)
      nil
    end

    # Delete a CRL
    # Deletes an existing CRL.
    # @param crl_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_tls_crl_with_http_info(crl_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyTlsCrlsApi.delete_tls_crl ...'
      end
      # verify the required parameter 'crl_id' is set
      if @api_client.config.client_side_validation && crl_id.nil?
        fail ArgumentError, "Missing the required parameter 'crl_id' when calling PolicyTlsCrlsApi.delete_tls_crl"
      end
      # resource path
      local_var_path = '/infra/crls/{crl-id}'.sub('{' + 'crl-id' + '}', crl_id.to_s)

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
        @api_client.config.logger.debug "API called: PolicyTlsCrlsApi#delete_tls_crl\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Show CRL Data for the Given CRL id.
    # Returns information about the specified CRL. For additional information, include the ?details=true modifier at the end of the request URI. 
    # @param crl_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :details whether to expand the pem data and show all its details (default to false)
    # @return [TlsCrl]
    def get_tls_crl(crl_id, opts = {})
      data, _status_code, _headers = get_tls_crl_with_http_info(crl_id, opts)
      data
    end

    # Show CRL Data for the Given CRL id.
    # Returns information about the specified CRL. For additional information, include the ?details&#x3D;true modifier at the end of the request URI. 
    # @param crl_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :details whether to expand the pem data and show all its details
    # @return [Array<(TlsCrl, Fixnum, Hash)>] TlsCrl data, response status code and response headers
    def get_tls_crl_with_http_info(crl_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyTlsCrlsApi.get_tls_crl ...'
      end
      # verify the required parameter 'crl_id' is set
      if @api_client.config.client_side_validation && crl_id.nil?
        fail ArgumentError, "Missing the required parameter 'crl_id' when calling PolicyTlsCrlsApi.get_tls_crl"
      end
      # resource path
      local_var_path = '/infra/crls/{crl-id}'.sub('{' + 'crl-id' + '}', crl_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'details'] = opts[:'details'] if !opts[:'details'].nil?

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
        :return_type => 'TlsCrl')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyTlsCrlsApi#get_tls_crl\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Return All Added CRLs
    # Returns information about all CRLs. For additional information, include the ?details=true modifier at the end of the request URI. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :details whether to expand the pem data and show all its details (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @option opts [String] :type Type of certificate to return
    # @return [TlsCrlListResult]
    def list_tls_crls(opts = {})
      data, _status_code, _headers = list_tls_crls_with_http_info(opts)
      data
    end

    # Return All Added CRLs
    # Returns information about all CRLs. For additional information, include the ?details&#x3D;true modifier at the end of the request URI. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :details whether to expand the pem data and show all its details
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @option opts [String] :type Type of certificate to return
    # @return [Array<(TlsCrlListResult, Fixnum, Hash)>] TlsCrlListResult data, response status code and response headers
    def list_tls_crls_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyTlsCrlsApi.list_tls_crls ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyTlsCrlsApi.list_tls_crls, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyTlsCrlsApi.list_tls_crls, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && opts[:'type'] && !['cluster_api_certificate'].include?(opts[:'type'])
        fail ArgumentError, 'invalid value for "type", must be one of cluster_api_certificate'
      end
      # resource path
      local_var_path = '/infra/crls'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'details'] = opts[:'details'] if !opts[:'details'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

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
        :return_type => 'TlsCrlListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyTlsCrlsApi#list_tls_crls\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
