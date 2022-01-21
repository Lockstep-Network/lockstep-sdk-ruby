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
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    # Country model for ISO-3166
    class CountryModel

        # Initialize the CountryModel using the provided prototype
        def initialize(params = {})
            @name = params.dig(:name)
            @alpha2 = params.dig(:alpha2)
            @alpha3 = params.dig(:alpha3)
            @country_code = params.dig(:country_code)
            @region = params.dig(:region)
            @sub_region = params.dig(:sub_region)
            @intermediate_region = params.dig(:intermediate_region)
            @region_code = params.dig(:region_code)
            @sub_region_code = params.dig(:sub_region_code)
            @intermediate_region_code = params.dig(:intermediate_region_code)
            @french_name = params.dig(:french_name)
            @aliases = params.dig(:aliases)
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

        def as_json(options={})
            {
                'name' => @name,
                'alpha2' => @alpha2,
                'alpha3' => @alpha3,
                'countryCode' => @country_code,
                'region' => @region,
                'subRegion' => @sub_region,
                'intermediateRegion' => @intermediate_region,
                'regionCode' => @region_code,
                'subRegionCode' => @sub_region_code,
                'intermediateRegionCode' => @intermediate_region_code,
                'frenchName' => @french_name,
                'aliases' => @aliases,
            }
        end

        def to_json(*options)
            as_json(*options).to_json(*options)
        end
    end
end
