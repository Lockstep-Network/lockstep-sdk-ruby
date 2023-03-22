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
    # Represents an account for an entire group
    class GroupAccountModel

        ##
        # Initialize the GroupAccountModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @group_name = params.dig(:group_name)
            @primary_user_id = params.dig(:primary_user_id)
            @group_company_id = params.dig(:group_company_id)
            @base_currency_code = params.dig(:base_currency_code)
            @is_active = params.dig(:is_active)
            @onboarding_scheduled = params.dig(:onboarding_scheduled)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
            @country_code = params.dig(:country_code)
        end

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [String] The name of the group
        attr_accessor :group_name

        ##
        # @return [Uuid] The primary user for the group
        attr_accessor :primary_user_id

        ##
        # @return [Uuid] The CompanyId of the Company the group is associated with
        attr_accessor :group_company_id

        ##
        # @return [String] Base Currency of the group
        attr_accessor :base_currency_code

        ##
        # @return [Boolean] The active status of the group
        attr_accessor :is_active

        ##
        # @return [Boolean] The onboarding session status of the group
        attr_accessor :onboarding_scheduled

        ##
        # @return [Date-time] The date this group account was created
        attr_accessor :created

        ##
        # @return [Uuid] The ID of the user who created this group account
        attr_accessor :created_user_id

        ##
        # @return [Date-time] The date this group account was last modified
        attr_accessor :modified

        ##
        # @return [Uuid] The ID of the user who last modified this group account
        attr_accessor :modified_user_id

        ##
        # @return [String] The 2-letter ISO country code for the group
        attr_accessor :country_code

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'groupName' => @group_name,
                'primaryUserId' => @primary_user_id,
                'groupCompanyId' => @group_company_id,
                'baseCurrencyCode' => @base_currency_code,
                'isActive' => @is_active,
                'onboardingScheduled' => @onboarding_scheduled,
                'created' => @created,
                'createdUserId' => @created_user_id,
                'modified' => @modified,
                'modifiedUserId' => @modified_user_id,
                'countryCode' => @country_code,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
