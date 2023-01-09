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
    # Represents summary aging bucket total.
    class SummaryAgingTotalsModel

        ##
        # Initialize the SummaryAgingTotalsModel using the provided prototype
        def initialize(params = {})
            @bucket = params.dig(:bucket)
            @outstanding_balance = params.dig(:outstanding_balance)
        end

        ##
        # @return [String] Aging bucket outstanding balance is associated to.
        attr_accessor :bucket

        ##
        # @return [Double] Aging outstanding balance value.
        attr_accessor :outstanding_balance

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'bucket' => @bucket,
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
