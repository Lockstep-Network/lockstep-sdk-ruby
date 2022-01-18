#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


class currencies_client

    # Initialize the currencies_client class with a lockstepsdk instance.
    def initialize(lockstepsdk)
        @lockstepsdk = lockstepsdk
    end


    # Retrieve a currency conversation rate from one currency to another as of the specified date.              Optionally, you can specify which currency data provider to use.
    # 
    #              The currency rate model contains all of the information used to make the API call, plus the rate to              use for the conversion.
    # 
    # @param sourceCurrency [string] The ISO 4217 currency code of the origin currency. For a list of currency codes, call List Currencies.
    # @param destinationCurrency [string] The ISO 4217 currency code of the target currency. For a list of currency codes, call List Currencies.
    # @param date [date] The date for which we should cto use for this currency conversion.
    # @param dataProvider [string] Optionally, you can specify a data provider.
    def retrieve_currency_rate(sourceCurrency:, destinationCurrency:, date:, dataProvider:)
        path = "/api/v1/Currencies/#{sourceCurrency}/#{destinationCurrency}"
        params = {:date => date, :dataProvider => dataProvider}
        @lockstepsdk.request(:get, path, nil, params)
    end

    # Receives an array of dates and currencies and a destination currency and returns an array of the corresponding currency rates to the given destination currency (Limit X).
    # 
    # @param destinationCurrency [string] The currency to convert to.
    # @param body [bulk_currency_conversion_model] A list of dates and source currencies.
    def bulk_currency_data(destinationCurrency:)
        path = "/api/v1/Currencies/bulk"
        params = {:destinationCurrency => destinationCurrency}
        @lockstepsdk.request(:post, path, body, params)
    end
end
