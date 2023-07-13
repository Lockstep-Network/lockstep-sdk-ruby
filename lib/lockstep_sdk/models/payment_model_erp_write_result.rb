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
    # Contains results of a write back request
    class PaymentModelErpWriteResult

        ##
        # Initialize the PaymentModelErpWriteResult using the provided prototype
        def initialize(params = {})
            @app_enrollment_id = params.dig(:app_enrollment_id)
            @erp_key = params.dig(:erp_key)
            @group_key = params.dig(:group_key)
            @message = params.dig(:message)
            @sync_request_id = params.dig(:sync_request_id)
            @results = params.dig(:results)
        end

        ##
        # @return [Uuid] The id of the connected AppEnrollmentModel
        attr_accessor :app_enrollment_id

        ##
        # @return [String] The ErpKey for the object written to the Erp if created
        attr_accessor :erp_key

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [String] An optional message to return with the result
        attr_accessor :message

        ##
        # @return [Uuid] The id of the SyncRequestModel the requests were added to
        attr_accessor :sync_request_id

        ##
        # @return [PaymentModel] Results from the ERP write operation
        attr_accessor :results

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'appEnrollmentId' => @app_enrollment_id,
                'erpKey' => @erp_key,
                'groupKey' => @group_key,
                'message' => @message,
                'syncRequestId' => @sync_request_id,
                'results' => @results,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
