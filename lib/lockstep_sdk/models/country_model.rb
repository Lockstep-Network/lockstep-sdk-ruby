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
    class CountryModel

        # Initialize the CountryModel using the provided prototype
        def initialize(params = {})
            @name = params.fetch(:name)
            @alpha2 = params.fetch(:alpha2)
            @alpha3 = params.fetch(:alpha3)
            @country_code = params.fetch(:country_code)
            @region = params.fetch(:region)
            @sub_region = params.fetch(:sub_region)
            @intermediate_region = params.fetch(:intermediate_region)
            @region_code = params.fetch(:region_code)
            @sub_region_code = params.fetch(:sub_region_code)
            @intermediate_region_code = params.fetch(:intermediate_region_code)
            @french_name = params.fetch(:french_name)
            @aliases = params.fetch(:aliases)
        end

        # @return [String] Name of the country
        attr_accessor :name
        # @return [String] 2 letter alphabetic code for the given country
        attr_accessor :alpha2
        # @return [String] 3 letter alphabetic code for the given country
        attr_accessor :alpha3
        # @return [Int32] Unique 3 digit number for the given country
        attr_accessor :country_code
        # @return [String] Region of the country
        attr_accessor :region
        # @return [String] Subregion of the country
        attr_accessor :sub_region
        # @return [String] Intermediate region of the country
        attr_accessor :intermediate_region
        # @return [Int32] Numeric code for a region
        attr_accessor :region_code
        # @return [Int32] Numeric code for a subregion
        attr_accessor :sub_region_code
        # @return [Int32] Numeric code for an intermediate region
        attr_accessor :intermediate_region_code
        # @return [String] French name of the country
        attr_accessor :french_name
        # @return [String] A different name for a country
        attr_accessor :aliases
    end
end
