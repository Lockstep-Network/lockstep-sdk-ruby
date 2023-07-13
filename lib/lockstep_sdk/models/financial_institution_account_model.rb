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
    # An Financial Institution Account represents an account used for monetary transactions. E.g. - checking, savings,  or credit card accounts.
    class FinancialInstitutionAccountModel

        ##
        # Initialize the FinancialInstitutionAccountModel using the provided prototype
        def initialize(params = {})
            @financial_institution_account_id = params.dig(:financial_institution_account_id)
            @group_key = params.dig(:group_key)
            @bank_account_id = params.dig(:bank_account_id)
            @erp_key = params.dig(:erp_key)
            @app_enrollment_id = params.dig(:app_enrollment_id)
            @name = params.dig(:name)
            @status = params.dig(:status)
            @description = params.dig(:description)
            @account_type = params.dig(:account_type)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
        end

        ##
        # @return [Uuid] The unique identifier for the Financial Institution Account.
        attr_accessor :financial_institution_account_id

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [String] An alternate account id for the Financial Institution Account.
        attr_accessor :bank_account_id

        ##
        # @return [String] The External Id for the Financial Institution Account.
        attr_accessor :erp_key

        ##
        # @return [Uuid] The App Enrollment Id this Financial Institution is associated with.
        attr_accessor :app_enrollment_id

        ##
        # @return [String] The name of the Financial Institution Account.
        attr_accessor :name

        ##
        # @return [String] The status of the Financial Institution Account. Possible values are active, inactive, deleted or archived.
        attr_accessor :status

        ##
        # @return [String] The description for the Financial Institution Account.
        attr_accessor :description

        ##
        # @return [String] The classification for the Financial Institution Account. Possible values are Asset, Equity, Expense, Liability or Income.
        attr_accessor :account_type

        ##
        # @return [Date-time] The date the Financial Institution Account was created.
        attr_accessor :created

        ##
        # @return [Uuid] The user that has created the Financial Institution Account.
        attr_accessor :created_user_id

        ##
        # @return [Date-time] The date the Financial Institution Account was modified.
        attr_accessor :modified

        ##
        # @return [Uuid] The user that has modified the Financial Institution Account.
        attr_accessor :modified_user_id

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'financialInstitutionAccountId' => @financial_institution_account_id,
                'groupKey' => @group_key,
                'bankAccountId' => @bank_account_id,
                'erpKey' => @erp_key,
                'appEnrollmentId' => @app_enrollment_id,
                'name' => @name,
                'status' => @status,
                'description' => @description,
                'accountType' => @account_type,
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
