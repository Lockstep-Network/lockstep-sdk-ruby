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
    # Represents an aging record
    class AgingModel

        ##
        # Initialize the AgingModel using the provided prototype
        def initialize(params = {})
            @bucket = params.dig(:bucket)
            @currency_code = params.dig(:currency_code)
            @outstanding_balance = params.dig(:outstanding_balance)
        end

        ##
        # @return [Int32] Aging bucket of outstanding balance data (days past due date of invoice)
        attr_accessor :bucket

        ##
        # @return [String] Currency code of aging bucket
        attr_accessor :currency_code

        ##
        # @return [Double] Outstanding balance for the given aging bucket
        attr_accessor :outstanding_balance

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'bucket' => @bucket,
                'currencyCode' => @currency_code,
                'outstandingBalance' => @outstanding_balance,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
