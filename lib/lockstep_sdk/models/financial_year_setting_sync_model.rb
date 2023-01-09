#
# Lockstep Platform SDK for Ruby
#
# (c) 2021-2023 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Lockstep Network <support@lockstep.io>
# @copyright  2021-2023 Lockstep, Inc.
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    ##
    # The FinancialYearSettingSyncModel represents information coming into Lockstep from an external financial system or other
    # enterprise resource planning system.  To import data from an external system, convert your original data into
    # the FinancialYearSettingSyncModel format and call the [Upload Sync File API](https://developer.lockstep.io/reference/post_api-v1-sync-zip).
    # This API retrieves all of the data you uploaded in a compressed ZIP file and imports it into the Lockstep
    # platform.
    #
    # Once imported, this record will be available in the Lockstep API as a [FinancialYearSettingModel](https://developer.lockstep.io/docs/financialyearsettingmodel).
    # Sync is supported for only one FinancialYearSetting per app enrollment and one FinancialYearSetting imported outside of
    # an app enrollment - please submit only one model here.  If multiple models are submitted, only the latest one is considered for Sync.
    #
    # For more information on writing your own connector, see [Connector Data](https://developer.lockstep.io/docs/connector-data).
    class FinancialYearSettingSyncModel

        ##
        # Initialize the FinancialYearSettingSyncModel using the provided prototype
        def initialize(params = {})
            @year_type = params.dig(:year_type)
            @total_periods = params.dig(:total_periods)
            @start_date = params.dig(:start_date)
            @end_date = params.dig(:end_date)
        end

        ##
        # @return [String] The type of financial year, either Calendar or Fiscal.
        attr_accessor :year_type

        ##
        # @return [Int32] Total number of periods in the year. For Calendar year types this should always be 12. For Fiscal year types this can either be 12 or 13 for a 4 week 13 period year.
        attr_accessor :total_periods

        ##
        # @return [String] The start date of the financial year. Should be entered in MM-DD format.
        attr_accessor :start_date

        ##
        # @return [String] The end date of the financial year. Should be entered in MM-DD format.
        attr_accessor :end_date

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'yearType' => @year_type,
                'totalPeriods' => @total_periods,
                'startDate' => @start_date,
                'endDate' => @end_date,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
