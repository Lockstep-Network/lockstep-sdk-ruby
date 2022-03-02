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
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    ##
    # A Financial Year Setting is used to to set the type, beginning, end, and number of periods of a year used to
    # calculate accounting reports. The financial setting can either be for a specific app enrollment id via a sync
    # or, when the financial year setting is manually created, will cover all account data without an app enrollment id.
    class FinancialYearSettingModel

        ##
        # Initialize the FinancialYearSettingModel using the provided prototype
        def initialize(params = {})
            @financial_year_setting_id = params.dig(:financial_year_setting_id)
            @group_key = params.dig(:group_key)
            @app_enrollment_id = params.dig(:app_enrollment_id)
            @year_type = params.dig(:year_type)
            @total_periods = params.dig(:total_periods)
            @start_date = params.dig(:start_date)
            @end_date = params.dig(:end_date)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
        end

        ##
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :financial_year_setting_id

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Uuid] The AppEnrollmentId of the application that imported this record. For accounts with more than one financial system connected, this field identifies the originating financial system that produced this record. This value is null if this record was not loaded from an external ERP or financial system.
        attr_accessor :app_enrollment_id

        ##
        # @return [String] The type of financial year, either Calendar or Fiscal.
        attr_accessor :year_type

        ##
        # @return [Int32] Total number of periods in the year. For Calendar year types this should always be 12. For Fiscal year types this can either be 12 or 13 for a 4 week 13 period year.
        attr_accessor :total_periods

        ##
        # @return [Date] The start date of the financial year. Should be entered in MM-DD format.
        attr_accessor :start_date

        ##
        # @return [Date] The end date of the financial year. Should be entered in MM-DD format.
        attr_accessor :end_date

        ##
        # @return [Date-time] The date on which this financial year setting record was created.
        attr_accessor :created

        ##
        # @return [Uuid] The ID number of the user who created this financial year setting.
        attr_accessor :created_user_id

        ##
        # @return [Date-time] The date on which this financial year setting record was last modified.
        attr_accessor :modified

        ##
        # @return [Uuid] The ID number of the user who most recently modified this financial year setting.
        attr_accessor :modified_user_id

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'financialYearSettingId' => @financial_year_setting_id,
                'groupKey' => @group_key,
                'appEnrollmentId' => @app_enrollment_id,
                'yearType' => @year_type,
                'totalPeriods' => @total_periods,
                'startDate' => @start_date,
                'endDate' => @end_date,
                'created' => @created,
                'createdUserId' => @created_user_id,
                'modified' => @modified,
                'modifiedUserId' => @modified_user_id,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
