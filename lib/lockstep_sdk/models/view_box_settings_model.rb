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
    # Optional meta data for image view box settings.
    class ViewBoxSettingsModel

        ##
        # Initialize the ViewBoxSettingsModel using the provided prototype
        def initialize(params = {})
            @logo_view_box_min_x = params.dig(:logo_view_box_min_x)
            @logo_view_box_min_y = params.dig(:logo_view_box_min_y)
            @logo_view_box_width = params.dig(:logo_view_box_width)
            @logo_view_box_height = params.dig(:logo_view_box_height)
        end

        ##
        # @return [Double] ViewBox minX setting for this Company's logo.
        attr_accessor :logo_view_box_min_x

        ##
        # @return [Double] ViewBox minY setting for this Company's logo.
        attr_accessor :logo_view_box_min_y

        ##
        # @return [Double] ViewBox width setting for this Company's logo.
        attr_accessor :logo_view_box_width

        ##
        # @return [Double] ViewBox height setting for this Company's logo.
        attr_accessor :logo_view_box_height

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'logoViewBoxMinX' => @logo_view_box_min_x,
                'logoViewBoxMinY' => @logo_view_box_min_y,
                'logoViewBoxWidth' => @logo_view_box_width,
                'logoViewBoxHeight' => @logo_view_box_height,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
