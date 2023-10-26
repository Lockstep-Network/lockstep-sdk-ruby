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
    # Represents a magic link that can be used to log in to a Lockstep application.
    class MagicLinkModel

        ##
        # Initialize the MagicLinkModel using the provided prototype
        def initialize(params = {})
            @magic_link_id = params.dig(:magic_link_id)
            @group_key = params.dig(:group_key)
            @user_id = params.dig(:user_id)
            @user_role = params.dig(:user_role)
            @application_id = params.dig(:application_id)
            @expires = params.dig(:expires)
            @revoked = params.dig(:revoked)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
            @company_id = params.dig(:company_id)
            @accounting_profile_id = params.dig(:accounting_profile_id)
            @magic_link_url = params.dig(:magic_link_url)
            @user = params.dig(:user)
            @visits = params.dig(:visits)
            @status = params.dig(:status)
        end

        ##
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :magic_link_id

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created.
        attr_accessor :group_key

        ##
        # @return [Uuid] The unique ID of the user that this magic link is associated with.
        attr_accessor :user_id

        ##
        # @return [Uuid] The ID of the user role for the magic link.
        attr_accessor :user_role

        ##
        # @return [Uuid] The ID of the application for this magic link.
        attr_accessor :application_id

        ##
        # @return [Date-time] The UTC date and time when this magic link expires.
        attr_accessor :expires

        ##
        # @return [Date-time] The UTC date and time when this magic link was revoked.
        attr_accessor :revoked

        ##
        # @return [Date-time] The date that the magic link was created
        attr_accessor :created

        ##
        # @return [Uuid] The ID of the user who created the magic link
        attr_accessor :created_user_id

        ##
        # @return [Date-time] The date that the magic link was last modified
        attr_accessor :modified

        ##
        # @return [Uuid] The ID of the user who last modified the magic link
        attr_accessor :modified_user_id

        ##
        # @return [Uuid] The ID of the company associated to this magic link
        attr_accessor :company_id

        ##
        # @return [Uuid] The ID of the accounting profile associated to this magic link
        attr_accessor :accounting_profile_id

        ##
        # @return [String] The created magic link URL. This will only be returned upon creation of the magic link. All other times, this value will be `null`.
        attr_accessor :magic_link_url

        ##
        # @return [UserAccountModel] The user associated with this magic link. To retrieve this item, specify `User` in the "Include" parameter for your query.
        attr_accessor :user

        ##
        # @return [Int32] The number of visits to this Magic Link
        attr_accessor :visits

        ##
        # @return [MagicLinkStatus] Possible statuses for a Magic Link.
        attr_accessor :status

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'magicLinkId' => @magic_link_id,
                'groupKey' => @group_key,
                'userId' => @user_id,
                'userRole' => @user_role,
                'applicationId' => @application_id,
                'expires' => @expires,
                'revoked' => @revoked,
                'created' => @created,
                'createdUserId' => @created_user_id,
                'modified' => @modified,
                'modifiedUserId' => @modified_user_id,
                'companyId' => @company_id,
                'accountingProfileId' => @accounting_profile_id,
                'magicLinkUrl' => @magic_link_url,
                'user' => @user,
                'visits' => @visits,
                'status' => @status,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
