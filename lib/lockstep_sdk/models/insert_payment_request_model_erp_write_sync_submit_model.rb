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
    # Lockstep.Shared.Models.Sync.ErpWriteSyncSubmitModel`1 represents a request to write back a collection
    #             of requests to the connected AppEnrollment.
    class InsertPaymentRequestModelErpWriteSyncSubmitModel

        ##
        # Initialize the InsertPaymentRequestModelErpWriteSyncSubmitModel using the provided prototype
        def initialize(params = {})
            @app_enrollment_id = params.dig(:app_enrollment_id)
            @requests = params.dig(:requests)
        end

        ##
        # @return [Uuid] The connected App Enrollment id.
        attr_accessor :app_enrollment_id

        ##
        # @return [InsertPaymentRequestModel] An array of requests to write back.
        attr_accessor :requests

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'appEnrollmentId' => @app_enrollment_id,
                'requests' => @requests,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
