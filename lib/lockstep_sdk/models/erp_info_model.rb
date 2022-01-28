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
# @version    2022.4
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    ##
    # Represents the ERP object sent in a provisioning request
    class ErpInfoModel

        ##
        # Initialize the ErpInfoModel using the provided prototype
        def initialize(params = {})
            @app_id = params.dig(:app_id)
            @data = params.dig(:data)
        end

        ##
        # @return [Uuid] The id of the ERP's App
        attr_accessor :app_id

        ##
        # @return [ConnectorInfoModel] The data required to store for connector access
        attr_accessor :data

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'appId' => @app_id,
                'data' => @data,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
