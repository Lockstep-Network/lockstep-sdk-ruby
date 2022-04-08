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


require 'json'

module LockstepSdk

    ##
    # An Financial account refers to records of assets, liabilities, income, expenses, and equity.
    class FinancialAccountModel

        ##
        # Initialize the FinancialAccountModel using the provided prototype
        def initialize(params = {})
            @financial_account_id = params.dig(:financial_account_id)
            @group_key = params.dig(:group_key)
            @code = params.dig(:code)
            @erp_key = params.dig(:erp_key)
            @app_enrollment_id = params.dig(:app_enrollment_id)
            @name = params.dig(:name)
            @status = params.dig(:status)
            @cashflow_type = params.dig(:cashflow_type)
            @description = params.dig(:description)
            @classification = params.dig(:classification)
            @category = params.dig(:category)
            @subcategory = params.dig(:subcategory)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
        end

        ##
        # @return [Uuid] The unique identifier for the Financial Account.
        attr_accessor :financial_account_id

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [String] The code for the Financial Account. Can either be a general ledger or an account code.
        attr_accessor :code

        ##
        # @return [String] The External Id for the Financial Account.
        attr_accessor :erp_key

        ##
        # @return [Uuid] The App Enrollment Id for the Financial Account.
        attr_accessor :app_enrollment_id

        ##
        # @return [String] The name of the Financial Account.
        attr_accessor :name

        ##
        # @return [String] The status of the Financial Account. Possible values are active, inactive, deleted or archived.
        attr_accessor :status

        ##
        # @return [String] The cashflow type for the Financial Account. Examples include cash, financing, investment or operation.
        attr_accessor :cashflow_type

        ##
        # @return [String] The description for the Financial Account.
        attr_accessor :description

        ##
        # @return [String] The classification for the Financial Account. Possible values are Asset, Equity, Expense, Liability or Income.
        attr_accessor :classification

        ##
        # @return [String] The category for the Financial Account. Examples include Current Asset, Current Liability, Common Stock
        attr_accessor :category

        ##
        # @return [String] The subcategory for the Financial Account. Examples include Cash, Property, Bank Loan, etc.
        attr_accessor :subcategory

        ##
        # @return [Date-time] The date the FinancialAccount was created.
        attr_accessor :created

        ##
        # @return [Uuid] The user that has created the Financial Account.
        attr_accessor :created_user_id

        ##
        # @return [Date-time] The date the Financial Account was modified.
        attr_accessor :modified

        ##
        # @return [Uuid] The user that has modified the Financial Account.
        attr_accessor :modified_user_id

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'financialAccountId' => @financial_account_id,
                'groupKey' => @group_key,
                'code' => @code,
                'erpKey' => @erp_key,
                'appEnrollmentId' => @app_enrollment_id,
                'name' => @name,
                'status' => @status,
                'cashflowType' => @cashflow_type,
                'description' => @description,
                'classification' => @classification,
                'category' => @category,
                'subcategory' => @subcategory,
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
