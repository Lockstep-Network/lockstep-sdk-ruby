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
    # Represents a balance for a financial account for a given period of time.
    class FinancialAccountBalanceHistoryModel

        ##
        # Initialize the FinancialAccountBalanceHistoryModel using the provided prototype
        def initialize(params = {})
            @financial_account_balance_history_id = params.dig(:financial_account_balance_history_id)
            @group_key = params.dig(:group_key)
            @financial_account_id = params.dig(:financial_account_id)
            @app_enrollment_id = params.dig(:app_enrollment_id)
            @financial_year = params.dig(:financial_year)
            @period_number = params.dig(:period_number)
            @period_start_date = params.dig(:period_start_date)
            @period_end_date = params.dig(:period_end_date)
            @status = params.dig(:status)
            @balance = params.dig(:balance)
            @balance_type = params.dig(:balance_type)
            @balance_type_name = params.dig(:balance_type_name)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
        end

        ##
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :financial_account_balance_history_id

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Uuid] The id of the Financial Account that this balance history is for.
        attr_accessor :financial_account_id

        ##
        # @return [Uuid] The AppEnrollmentId of the application that imported this record. For accounts with more than one financial system connected, this field identifies the originating financial system that produced this record. This value is null if this record was not loaded from an external ERP or financial system.
        attr_accessor :app_enrollment_id

        ##
        # @return [Int32] The financial year that this period falls under
        attr_accessor :financial_year

        ##
        # @return [Int32] The period number (1-12 or 1-13) that this balance history is for
        attr_accessor :period_number

        ##
        # @return [Date-time] The start date of this period.
        attr_accessor :period_start_date

        ##
        # @return [Date-time] The end date of this period.
        attr_accessor :period_end_date

        ##
        # @return [String] The status of this period. The status should be Closed if the books for this period have been closed, if not the status should be Open. The status can also be Deleted if there was a recalculation that needed to occur, for example due to a change in financial year settings.
        attr_accessor :status

        ##
        # @return [Double] The current or end balance of this period.
        attr_accessor :balance

        ##
        # @return [FinancialAccountBalanceType] Financial Account Balance Types
        attr_accessor :balance_type

        ##
        # @return [String] The name of the BalanceType for this record.
        attr_accessor :balance_type_name

        ##
        # @return [Date-time] The date on which this financial account balance history record was created.
        attr_accessor :created

        ##
        # @return [Uuid] The ID number of the user who created this financial account balance history.
        attr_accessor :created_user_id

        ##
        # @return [Date-time] The date on which this financial account balance history record was modified.
        attr_accessor :modified

        ##
        # @return [Uuid] The ID number of the user who most recently modified this financial account balance history.
        attr_accessor :modified_user_id

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'financialAccountBalanceHistoryId' => @financial_account_balance_history_id,
                'groupKey' => @group_key,
                'financialAccountId' => @financial_account_id,
                'appEnrollmentId' => @app_enrollment_id,
                'financialYear' => @financial_year,
                'periodNumber' => @period_number,
                'periodStartDate' => @period_start_date,
                'periodEndDate' => @period_end_date,
                'status' => @status,
                'balance' => @balance,
                'balanceType' => @balance_type,
                'balanceTypeName' => @balance_type_name,
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
