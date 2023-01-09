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
    # Represents a failed API request.
    class ErrorResult

        ##
        # Initialize the ErrorResult using the provided prototype
        def initialize(params = {})
            @type = params.dig(:type)
            @title = params.dig(:title)
            @status = params.dig(:status)
            @detail = params.dig(:detail)
            @instance = params.dig(:instance)
            @content = params.dig(:content)
        end

        ##
        # @return [String] A description of the type of error that occurred.
        attr_accessor :type

        ##
        # @return [String] A short title describing the error.
        attr_accessor :title

        ##
        # @return [Int32] If an error code is applicable, this contains an error number.
        attr_accessor :status

        ##
        # @return [String] If detailed information about this error is available, this value contains more information.
        attr_accessor :detail

        ##
        # @return [String] If this error corresponds to a specific instance or object, this field indicates which one.
        attr_accessor :instance

        ##
        # @return [String] The full content of the HTTP response.
        attr_accessor :content

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'type' => @type,
                'title' => @title,
                'status' => @status,
                'detail' => @detail,
                'instance' => @instance,
                'content' => @content,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
