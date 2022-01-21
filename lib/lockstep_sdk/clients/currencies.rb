#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @author     Manish Narayan B S <manish.n@lockstep.io>
# @author     Rishi Rajkumar Jawahar <rjawahar@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'awrence'

class CurrenciesClient

    # Initialize the CurrenciesClient class with a lockstepsdk instance.
    # @param lockstepsdk [LockstepApi] The Lockstep API client object for this connection
    def initialize(lockstepsdk)
        @lockstepsdk = lockstepsdk
    end


    # Retrieve a currency conversation rate from one currency to another as of the specified date.              Optionally, you can specify which currency data provider to use.
    # 
    #              The currency rate model contains all of the information used to make the API call, plus the rate to              use for the conversion.
    # 
    # @param source_currency [string] The ISO 4217 currency code of the origin currency. For a list of currency codes, call List Currencies.
    # @param destination_currency [string] The ISO 4217 currency code of the target currency. For a list of currency codes, call List Currencies.
    # @param date [date] The date for which we should cto use for this currency conversion.
    # @param data_provider [string] Optionally, you can specify a data provider.
    def retrieve_currency_rate(source_currency:, destination_currency:, date:, data_provider:)
        path = "/api/v1/Currencies/#{sourceCurrency}/#{destinationCurrency}"
        params = {:date => date, :dataProvider => data_provider}
        @lockstepsdk.request(:get, path, nil, params)
    end

    # Receives an array of dates and currencies and a destination currency and returns an array of the corresponding currency rates to the given destination currency (Limit X).
    # 
    # @param destination_currency [string] The currency to convert to.
    # @param body [BulkCurrencyConversionModel] A list of dates and source currencies.
    def bulk_currency_data(destination_currency:, body:)
        path = "/api/v1/Currencies/bulk"
        params = {:destinationCurrency => destination_currency}
        @lockstepsdk.request(:post, path, body.to_camelback_keys.to_json, params)
    end
end
