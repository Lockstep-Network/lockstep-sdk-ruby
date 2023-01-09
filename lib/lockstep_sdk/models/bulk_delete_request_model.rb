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
    # Represents a bulk delete request in the API
    class BulkDeleteRequestModel

        ##
        # Initialize the BulkDeleteRequestModel using the provided prototype
        def initialize(params = {})
            @ids_to_delete = params.dig(:ids_to_delete)
        end

        ##
        # @return [Uuid] Represents the IDs to be deleted
        attr_accessor :ids_to_delete

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'idsToDelete' => @ids_to_delete,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
