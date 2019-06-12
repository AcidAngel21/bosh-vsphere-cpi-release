=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 2.5.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.4

=end

require 'uri'

module NSXTPolicyClient
  class PolicyVpnIpsecStatusApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get IPSec VPN session detailed status.
    # - no enforcement point path specified: detailed status is evaluated on each enforcement point. - an enforcement point path is specified: detailed status is evaluated only on the given enforcement point. - source=realtime: detailed status is fetched realtime from the enforcement point. - source=cached: cached detailed status from enforcement point is returned. 
    # @param tier_0_id 
    # @param locale_service_id 
    # @param service_id 
    # @param session_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @option opts [String] :source Data source type.
    # @return [AggregateIPSecVpnSessionStatus]
    def get_tier0_ip_sec_vpn_session_status(tier_0_id, locale_service_id, service_id, session_id, opts = {})
      data, _status_code, _headers = get_tier0_ip_sec_vpn_session_status_with_http_info(tier_0_id, locale_service_id, service_id, session_id, opts)
      data
    end

    # Get IPSec VPN session detailed status.
    # - no enforcement point path specified: detailed status is evaluated on each enforcement point. - an enforcement point path is specified: detailed status is evaluated only on the given enforcement point. - source&#x3D;realtime: detailed status is fetched realtime from the enforcement point. - source&#x3D;cached: cached detailed status from enforcement point is returned. 
    # @param tier_0_id 
    # @param locale_service_id 
    # @param service_id 
    # @param session_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @option opts [String] :source Data source type.
    # @return [Array<(AggregateIPSecVpnSessionStatus, Fixnum, Hash)>] AggregateIPSecVpnSessionStatus data, response status code and response headers
    def get_tier0_ip_sec_vpn_session_status_with_http_info(tier_0_id, locale_service_id, service_id, session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyVpnIpsecStatusApi.get_tier0_ip_sec_vpn_session_status ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyVpnIpsecStatusApi.get_tier0_ip_sec_vpn_session_status"
      end
      # verify the required parameter 'locale_service_id' is set
      if @api_client.config.client_side_validation && locale_service_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_service_id' when calling PolicyVpnIpsecStatusApi.get_tier0_ip_sec_vpn_session_status"
      end
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling PolicyVpnIpsecStatusApi.get_tier0_ip_sec_vpn_session_status"
      end
      # verify the required parameter 'session_id' is set
      if @api_client.config.client_side_validation && session_id.nil?
        fail ArgumentError, "Missing the required parameter 'session_id' when calling PolicyVpnIpsecStatusApi.get_tier0_ip_sec_vpn_session_status"
      end
      if @api_client.config.client_side_validation && opts[:'source'] && !['realtime', 'cached'].include?(opts[:'source'])
        fail ArgumentError, 'invalid value for "source", must be one of realtime, cached'
      end
      # resource path
      local_var_path = '/infra/tier-0s/{tier-0-id}/locale-services/{locale-service-id}/ipsec-vpn-services/{service-id}/sessions/{session-id}/detailed-status'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s).sub('{' + 'locale-service-id' + '}', locale_service_id.to_s).sub('{' + 'service-id' + '}', service_id.to_s).sub('{' + 'session-id' + '}', session_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'enforcement_point_path'] = opts[:'enforcement_point_path'] if !opts[:'enforcement_point_path'].nil?
      query_params[:'source'] = opts[:'source'] if !opts[:'source'].nil?

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
        :return_type => 'AggregateIPSecVpnSessionStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyVpnIpsecStatusApi#get_tier0_ip_sec_vpn_session_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get IPSec VPN session detailed status.
    # - no enforcement point path specified: detailed status is evaluated on each enforcement point. - an enforcement point path is specified: detailed status is evaluated only on the given enforcement point. - source=realtime: detailed status is fetched realtime from the enforcement point. - source=cached: cached detailed status from enforcement point is returned. 
    # @param tier_1_id 
    # @param locale_service_id 
    # @param service_id 
    # @param session_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @option opts [String] :source Data source type.
    # @return [AggregateIPSecVpnSessionStatus]
    def get_tier1_ip_sec_vpn_session_status(tier_1_id, locale_service_id, service_id, session_id, opts = {})
      data, _status_code, _headers = get_tier1_ip_sec_vpn_session_status_with_http_info(tier_1_id, locale_service_id, service_id, session_id, opts)
      data
    end

    # Get IPSec VPN session detailed status.
    # - no enforcement point path specified: detailed status is evaluated on each enforcement point. - an enforcement point path is specified: detailed status is evaluated only on the given enforcement point. - source&#x3D;realtime: detailed status is fetched realtime from the enforcement point. - source&#x3D;cached: cached detailed status from enforcement point is returned. 
    # @param tier_1_id 
    # @param locale_service_id 
    # @param service_id 
    # @param session_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @option opts [String] :source Data source type.
    # @return [Array<(AggregateIPSecVpnSessionStatus, Fixnum, Hash)>] AggregateIPSecVpnSessionStatus data, response status code and response headers
    def get_tier1_ip_sec_vpn_session_status_with_http_info(tier_1_id, locale_service_id, service_id, session_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyVpnIpsecStatusApi.get_tier1_ip_sec_vpn_session_status ...'
      end
      # verify the required parameter 'tier_1_id' is set
      if @api_client.config.client_side_validation && tier_1_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_1_id' when calling PolicyVpnIpsecStatusApi.get_tier1_ip_sec_vpn_session_status"
      end
      # verify the required parameter 'locale_service_id' is set
      if @api_client.config.client_side_validation && locale_service_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_service_id' when calling PolicyVpnIpsecStatusApi.get_tier1_ip_sec_vpn_session_status"
      end
      # verify the required parameter 'service_id' is set
      if @api_client.config.client_side_validation && service_id.nil?
        fail ArgumentError, "Missing the required parameter 'service_id' when calling PolicyVpnIpsecStatusApi.get_tier1_ip_sec_vpn_session_status"
      end
      # verify the required parameter 'session_id' is set
      if @api_client.config.client_side_validation && session_id.nil?
        fail ArgumentError, "Missing the required parameter 'session_id' when calling PolicyVpnIpsecStatusApi.get_tier1_ip_sec_vpn_session_status"
      end
      if @api_client.config.client_side_validation && opts[:'source'] && !['realtime', 'cached'].include?(opts[:'source'])
        fail ArgumentError, 'invalid value for "source", must be one of realtime, cached'
      end
      # resource path
      local_var_path = '/infra/tier-1s/{tier-1-id}/locale-services/{locale-service-id}/ipsec-vpn-services/{service-id}/sessions/{session-id}/detailed-status'.sub('{' + 'tier-1-id' + '}', tier_1_id.to_s).sub('{' + 'locale-service-id' + '}', locale_service_id.to_s).sub('{' + 'service-id' + '}', service_id.to_s).sub('{' + 'session-id' + '}', session_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'enforcement_point_path'] = opts[:'enforcement_point_path'] if !opts[:'enforcement_point_path'].nil?
      query_params[:'source'] = opts[:'source'] if !opts[:'source'].nil?

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
        :return_type => 'AggregateIPSecVpnSessionStatus')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyVpnIpsecStatusApi#get_tier1_ip_sec_vpn_session_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
