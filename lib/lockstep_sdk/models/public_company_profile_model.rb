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
    # Contains Public Company Profile data.
    class PublicCompanyProfileModel

        ##
        # Initialize the PublicCompanyProfileModel using the provided prototype
        def initialize(params = {})
            @company_id = params.dig(:company_id)
            @company_name = params.dig(:company_name)
            @company_logo_url = params.dig(:company_logo_url)
            @website = params.dig(:website)
            @description = params.dig(:description)
            @public_url_slug = params.dig(:public_url_slug)
        end

        ##
        # @return [Uuid] The unique ID of the company associated with this profile.
        attr_accessor :company_id

        ##
        # @return [String] The short name of the company associated with this profile.
        attr_accessor :company_name

        ##
        # @return [String] The URL of this company's logo, if known.
        attr_accessor :company_logo_url

        ##
        # @return [String] Website URL for the company associated with this profile.
        attr_accessor :website

        ##
        # @return [String] Description of the company associated with this profile.
        attr_accessor :description

        ##
        # @return [String] The public url slug for this Public Company Profile.
        attr_accessor :public_url_slug

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'companyId' => @company_id,
                'companyName' => @company_name,
                'companyLogoUrl' => @company_logo_url,
                'website' => @website,
                'description' => @description,
                'publicUrlSlug' => @public_url_slug,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
