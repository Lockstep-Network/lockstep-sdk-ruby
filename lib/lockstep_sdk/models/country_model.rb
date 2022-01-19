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

    # Country model for ISO-3166
    class countryModel
        # @return [string] Name of the country
        attr_accessor :name
        # @return [string] 2 letter alphabetic code for the given country
        attr_accessor :alpha2
        # @return [string] 3 letter alphabetic code for the given country
        attr_accessor :alpha3
        # @return [int32] Unique 3 digit number for the given country
        attr_accessor :country_code
        # @return [string] Region of the country
        attr_accessor :region
        # @return [string] Subregion of the country
        attr_accessor :sub_region
        # @return [string] Intermediate region of the country
        attr_accessor :intermediate_region
        # @return [int32] Numeric code for a region
        attr_accessor :region_code
        # @return [int32] Numeric code for a subregion
        attr_accessor :sub_region_code
        # @return [int32] Numeric code for an intermediate region
        attr_accessor :intermediate_region_code
        # @return [string] French name of the country
        attr_accessor :french_name
        # @return [string] A different name for a country
        attr_accessor :aliases
    end
end
