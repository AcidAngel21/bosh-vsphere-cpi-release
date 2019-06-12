=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 2.5.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.4

=end

require 'uri'

module NSXTPolicyClient
  class PolicyVpnIpsecDpdProfilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create or patch a custom DPD Profile
    # Create or patch dead peer detection (DPD) profile. Any change in profile affects all sessions consuming this profile. System will be provisioned with system owned editable default DPD profile. Any change in profile affects all sessions consuming this profile.
    # @param dpd_profile_id 
    # @param ip_sec_vpn_dpd_profile 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def create_or_patch_ip_sec_vpn_dpd_profile(dpd_profile_id, ip_sec_vpn_dpd_profile, opts = {})
      create_or_patch_ip_sec_vpn_dpd_profile_with_http_info(dpd_profile_id, ip_sec_vpn_dpd_profile, opts)
      nil
    end

    # Create or patch a custom DPD Profile
    # Create or patch dead peer detection (DPD) profile. Any change in profile affects all sessions consuming this profile. System will be provisioned with system owned editable default DPD profile. Any change in profile affects all sessions consuming this profile.
    # @param dpd_profile_id 
    # @param ip_sec_vpn_dpd_profile 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def create_or_patch_ip_sec_vpn_dpd_profile_with_http_info(dpd_profile_id, ip_sec_vpn_dpd_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyVpnIpsecDpdProfilesApi.create_or_patch_ip_sec_vpn_dpd_profile ...'
      end
      # verify the required parameter 'dpd_profile_id' is set
      if @api_client.config.client_side_validation && dpd_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'dpd_profile_id' when calling PolicyVpnIpsecDpdProfilesApi.create_or_patch_ip_sec_vpn_dpd_profile"
      end
      # verify the required parameter 'ip_sec_vpn_dpd_profile' is set
      if @api_client.config.client_side_validation && ip_sec_vpn_dpd_profile.nil?
        fail ArgumentError, "Missing the required parameter 'ip_sec_vpn_dpd_profile' when calling PolicyVpnIpsecDpdProfilesApi.create_or_patch_ip_sec_vpn_dpd_profile"
      end
      # resource path
      local_var_path = '/infra/ipsec-vpn-dpd-profiles/{dpd-profile-id}'.sub('{' + 'dpd-profile-id' + '}', dpd_profile_id.to_s)

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
      post_body = @api_client.object_to_http_body(ip_sec_vpn_dpd_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyVpnIpsecDpdProfilesApi#create_or_patch_ip_sec_vpn_dpd_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or fully replace a custom IPSec tunnel Profile
    # Create or patch dead peer detection (DPD) profile. Any change in profile affects all sessions consuming this profile. System will be provisioned with system owned editable default DPD profile. Any change in profile affects all sessions consuming this profile. Revision is optional for creation and required for update.
    # @param dpd_profile_id 
    # @param ip_sec_vpn_dpd_profile 
    # @param [Hash] opts the optional parameters
    # @return [IPSecVpnDpdProfile]
    def create_or_update_ip_sec_vpn_dpd_profile(dpd_profile_id, ip_sec_vpn_dpd_profile, opts = {})
      data, _status_code, _headers = create_or_update_ip_sec_vpn_dpd_profile_with_http_info(dpd_profile_id, ip_sec_vpn_dpd_profile, opts)
      data
    end

    # Create or fully replace a custom IPSec tunnel Profile
    # Create or patch dead peer detection (DPD) profile. Any change in profile affects all sessions consuming this profile. System will be provisioned with system owned editable default DPD profile. Any change in profile affects all sessions consuming this profile. Revision is optional for creation and required for update.
    # @param dpd_profile_id 
    # @param ip_sec_vpn_dpd_profile 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IPSecVpnDpdProfile, Fixnum, Hash)>] IPSecVpnDpdProfile data, response status code and response headers
    def create_or_update_ip_sec_vpn_dpd_profile_with_http_info(dpd_profile_id, ip_sec_vpn_dpd_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyVpnIpsecDpdProfilesApi.create_or_update_ip_sec_vpn_dpd_profile ...'
      end
      # verify the required parameter 'dpd_profile_id' is set
      if @api_client.config.client_side_validation && dpd_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'dpd_profile_id' when calling PolicyVpnIpsecDpdProfilesApi.create_or_update_ip_sec_vpn_dpd_profile"
      end
      # verify the required parameter 'ip_sec_vpn_dpd_profile' is set
      if @api_client.config.client_side_validation && ip_sec_vpn_dpd_profile.nil?
        fail ArgumentError, "Missing the required parameter 'ip_sec_vpn_dpd_profile' when calling PolicyVpnIpsecDpdProfilesApi.create_or_update_ip_sec_vpn_dpd_profile"
      end
      # resource path
      local_var_path = '/infra/ipsec-vpn-dpd-profiles/{dpd-profile-id}'.sub('{' + 'dpd-profile-id' + '}', dpd_profile_id.to_s)

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
      post_body = @api_client.object_to_http_body(ip_sec_vpn_dpd_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IPSecVpnDpdProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyVpnIpsecDpdProfilesApi#create_or_update_ip_sec_vpn_dpd_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete custom dead peer detection (DPD) profile
    # Delete custom dead peer detection (DPD) profile. Profile can not be deleted if profile has references to it.
    # @param dpd_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_ip_sec_vpn_dpd_profile(dpd_profile_id, opts = {})
      delete_ip_sec_vpn_dpd_profile_with_http_info(dpd_profile_id, opts)
      nil
    end

    # Delete custom dead peer detection (DPD) profile
    # Delete custom dead peer detection (DPD) profile. Profile can not be deleted if profile has references to it.
    # @param dpd_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_ip_sec_vpn_dpd_profile_with_http_info(dpd_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyVpnIpsecDpdProfilesApi.delete_ip_sec_vpn_dpd_profile ...'
      end
      # verify the required parameter 'dpd_profile_id' is set
      if @api_client.config.client_side_validation && dpd_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'dpd_profile_id' when calling PolicyVpnIpsecDpdProfilesApi.delete_ip_sec_vpn_dpd_profile"
      end
      # resource path
      local_var_path = '/infra/ipsec-vpn-dpd-profiles/{dpd-profile-id}'.sub('{' + 'dpd-profile-id' + '}', dpd_profile_id.to_s)

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
        @api_client.config.logger.debug "API called: PolicyVpnIpsecDpdProfilesApi#delete_ip_sec_vpn_dpd_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get dead peer detection (DPD) profile
    # Get custom dead peer detection (DPD) profile, given the particular id.
    # @param dpd_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [IPSecVpnDpdProfile]
    def get_ip_sec_vpn_dpd_profile(dpd_profile_id, opts = {})
      data, _status_code, _headers = get_ip_sec_vpn_dpd_profile_with_http_info(dpd_profile_id, opts)
      data
    end

    # Get dead peer detection (DPD) profile
    # Get custom dead peer detection (DPD) profile, given the particular id.
    # @param dpd_profile_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IPSecVpnDpdProfile, Fixnum, Hash)>] IPSecVpnDpdProfile data, response status code and response headers
    def get_ip_sec_vpn_dpd_profile_with_http_info(dpd_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyVpnIpsecDpdProfilesApi.get_ip_sec_vpn_dpd_profile ...'
      end
      # verify the required parameter 'dpd_profile_id' is set
      if @api_client.config.client_side_validation && dpd_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'dpd_profile_id' when calling PolicyVpnIpsecDpdProfilesApi.get_ip_sec_vpn_dpd_profile"
      end
      # resource path
      local_var_path = '/infra/ipsec-vpn-dpd-profiles/{dpd-profile-id}'.sub('{' + 'dpd-profile-id' + '}', dpd_profile_id.to_s)

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
        :return_type => 'IPSecVpnDpdProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyVpnIpsecDpdProfilesApi#get_ip_sec_vpn_dpd_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List DPD profiles
    # Get paginated list of all DPD Profiles.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [IPSecVpnDpdProfileListResult]
    def list_ip_sec_vpn_dpd_profiles(opts = {})
      data, _status_code, _headers = list_ip_sec_vpn_dpd_profiles_with_http_info(opts)
      data
    end

    # List DPD profiles
    # Get paginated list of all DPD Profiles.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(IPSecVpnDpdProfileListResult, Fixnum, Hash)>] IPSecVpnDpdProfileListResult data, response status code and response headers
    def list_ip_sec_vpn_dpd_profiles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyVpnIpsecDpdProfilesApi.list_ip_sec_vpn_dpd_profiles ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyVpnIpsecDpdProfilesApi.list_ip_sec_vpn_dpd_profiles, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyVpnIpsecDpdProfilesApi.list_ip_sec_vpn_dpd_profiles, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/infra/ipsec-vpn-dpd-profiles'

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
        :return_type => 'IPSecVpnDpdProfileListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyVpnIpsecDpdProfilesApi#list_ip_sec_vpn_dpd_profiles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
