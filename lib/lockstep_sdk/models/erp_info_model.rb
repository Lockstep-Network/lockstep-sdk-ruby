#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


module LockstepSdk

    # Represents the ERP object sent in a provisioning request
    class ErpInfoModel

        # Initialize the ErpInfoModel using the provided prototype
        def initialize(params = {})
            @app_id = params.fetch(:app_id)
            @data = params.fetch(:data)
        end

        # @return [Uuid] The id of the ERP's App
        attr_accessor :app_id
        # @return [ConnectorInfoModel] The data required to store for connector access
        attr_accessor :data
    end
end
