#
# Lockstep Platform SDK for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Lockstep Network <support@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'awrence'

class FinancialYearSettingsClient

    ##
    # Initialize the FinancialYearSettingsClient class with an API client instance.
    # @param connection [LockstepApi] The API client object for this connection
    def initialize(connection)
        @connection = connection
    end


    ##
    # Retrieves the Financial Year Setting specified by this unique identifier.
    #
    # A Financial Year Setting is used to to set the type, beginning, end, and number of periods of a year used to calculate accounting reports. The financial setting can either be for a specific app enrollment id via a sync or, when the financial year setting is manually created, will cover all account data without an app enrollment id.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of this Financial Year Setting
    def retrieve_financial_year_setting(id:)
        path = "/api/v1/FinancialYearSettings/#{id}"
        @connection.request(:get, path, nil, nil)
    end

    ##
    # Updates a financial year setting that matches the specified id with the requested information.
    #
    # The PATCH method allows you to change specific values on the object while leaving other values alone.  As input you should supply a list of field names and new values.  If you do not provide the name of a field, that field will remain unchanged.  This allows you to ensure that you are only updating the specific fields desired.
    #
    # A Financial Year Setting is used to to set the type, beginning, end, and number of periods of a year used to calculate accounting reports. The financial setting can either be for a specific app enrollment id via a sync or, when the financial year setting is manually created, will cover all account data without an app enrollment id.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of the Financial Year Setting to update
    # @param body [object] A list of changes to apply to this Financial Year Setting
    def update_financial_year_setting(id:, body:)
        path = "/api/v1/FinancialYearSettings/#{id}"
        @connection.request(:patch, path, body.to_camelback_keys.to_json, nil)
    end

    ##
    # Delete the Financial Year Setting referred to by this unique identifier.
    #
    # A Financial Year Setting is used to to set the type, beginning, end, and number of periods of a year used to calculate accounting reports. The financial setting can either be for a specific app enrollment id via a sync or, when the financial year setting is manually created, will cover all account data without an app enrollment id.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of the Financial Year Setting to disable
    def delete_financial_year_setting(id:)
        path = "/api/v1/FinancialYearSettings/#{id}"
        @connection.request(:delete, path, nil, nil)
    end

    ##
    # Creates a financial year setting from a given model.
    #
    # A Financial Year Setting is used to to set the type, beginning, end, and number of periods of a year used to calculate accounting reports. The financial setting can either be for a specific app enrollment id via a sync or, when the financial year setting is manually created, will cover all account data without an app enrollment id.
    #
    # @param body [FinancialYearSettingModel] The Financial Year Setting to create
    def create_financial_year_setting(body:)
        path = "/api/v1/FinancialYearSettings"
        @connection.request(:post, path, body, nil)
    end

    ##
    # Queries Financial Year Settings for this account using the specified filtering, sorting, and pagination rules requested.
    #
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
    #
    # A Financial Year Setting is used to to set the type, beginning, end, and number of periods of a year used to calculate accounting reports. The financial setting can either be for a specific app enrollment id via a sync or, when the financial year setting is manually created, will cover all account data without an app enrollment id.
    #
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param order [string] The sort order for this query. See See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_size [int32] The page size for results (default 200). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_number [int32] The page number for results (default 0). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    def query_financial_year_settings(filter:, order:, page_size:, page_number:)
        path = "/api/v1/FinancialYearSettings/query"
        params = {:filter => filter, :order => order, :pageSize => page_size, :pageNumber => page_number}
        @connection.request(:get, path, nil, params)
    end
end
