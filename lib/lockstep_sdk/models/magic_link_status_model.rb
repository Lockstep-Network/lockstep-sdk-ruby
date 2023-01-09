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
    # Contains information about the user's magic link
    class MagicLinkStatusModel

        ##
        # Initialize the MagicLinkStatusModel using the provided prototype
        def initialize(params = {})
            @magic_link_id = params.dig(:magic_link_id)
            @application_id = params.dig(:application_id)
            @company_id = params.dig(:company_id)
            @accounting_profile_id = params.dig(:accounting_profile_id)
            @expires = params.dig(:expires)
        end

        ##
        # @return [Uuid] The id of the Magic link used to authenticate.
        attr_accessor :magic_link_id

        ##
        # @return [Uuid] The id of the application for the Magic Link
        attr_accessor :application_id

        ##
        # @return [Uuid] The id of the target company for the Magic Link
        attr_accessor :company_id

        ##
        # @return [Uuid] The id of the accounting profile for the Magic Link
        attr_accessor :accounting_profile_id

        ##
        # @return [Date-time] The UTC date and time when this magic link expires.
        attr_accessor :expires

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'magicLinkId' => @magic_link_id,
                'applicationId' => @application_id,
                'companyId' => @company_id,
                'accountingProfileId' => @accounting_profile_id,
                'expires' => @expires,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
