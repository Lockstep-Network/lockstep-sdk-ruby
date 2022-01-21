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
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    # Aggregated Attachment status information.
    class AttachmentHeaderInfoModel

        # Initialize the AttachmentHeaderInfoModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @company_id = params.dig(:company_id)
            @total_attachments = params.dig(:total_attachments)
            @total_archived = params.dig(:total_archived)
            @total_active = params.dig(:total_active)
        end

        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [Uuid] The CompanyId associated with the attachment status report. Providing a null value will return an attachment summary for all attachments associated to the provided GroupKey
        attr_accessor :company_id
        # @return [Int32] The total number of attachments associated with the provided GroupKey and CompanyId.
        attr_accessor :total_attachments
        # @return [Int32] The total number of archived attachments associated with the provided GroupKey and CompanyId.
        attr_accessor :total_archived
        # @return [Int32] The total number of active attachments associated with the provided GroupKey and CompanyId.
        attr_accessor :total_active

        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'companyId' => @company_id,
                'totalAttachments' => @total_attachments,
                'totalArchived' => @total_archived,
                'totalActive' => @total_active,
            }
        end

        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
