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
    # Represents a Uri for download link
    class UriModel

        ##
        # Initialize the UriModel using the provided prototype
        def initialize(params = {})
            @download_link = params.dig(:download_link)
        end

        ##
        # @return [Uri] Represents the download link
        attr_accessor :download_link

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'downloadLink' => @download_link,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
