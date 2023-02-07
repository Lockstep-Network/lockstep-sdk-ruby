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
    # An Accounting Profile Contact has a link to a Contact that is associated with your company's
    # Accounting Profile. These Contacts are secondary contacts to the primary that is on the profile.
    class AccountingProfileContactModel

        ##
        # Initialize the AccountingProfileContactModel using the provided prototype
        def initialize(params = {})
            @accounting_profile_contact_id = params.dig(:accounting_profile_contact_id)
            @accounting_profile_id = params.dig(:accounting_profile_id)
            @contact_id = params.dig(:contact_id)
            @is_primary = params.dig(:is_primary)
            @group_key = params.dig(:group_key)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
        end

        ##
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :accounting_profile_contact_id

        ##
        # @return [Uuid] The ID of the profile this contact is belongs to.
        attr_accessor :accounting_profile_id

        ##
        # @return [Uuid] The ID of the contact that is linked to this profile.
        attr_accessor :contact_id

        ##
        # @return [Boolean] Determines whether the contact is primary or secondary.
        attr_accessor :is_primary

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Date-time] The date on which this record was created.
        attr_accessor :created

        ##
        # @return [Uuid] The ID of the user who created this contact.
        attr_accessor :created_user_id

        ##
        # @return [Date-time] The date on which this record was last modified.
        attr_accessor :modified

        ##
        # @return [Uuid] The ID of the user who last modified this contact.
        attr_accessor :modified_user_id

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'accountingProfileContactId' => @accounting_profile_contact_id,
                'accountingProfileId' => @accounting_profile_id,
                'contactId' => @contact_id,
                'isPrimary' => @is_primary,
                'groupKey' => @group_key,
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
