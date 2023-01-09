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
    # Model containing information to create a new developer account.
    class DeveloperAccountSubmitModel

        ##
        # Initialize the DeveloperAccountSubmitModel using the provided prototype
        def initialize(params = {})
            @name = params.dig(:name)
            @first_name = params.dig(:first_name)
            @last_name = params.dig(:last_name)
            @email = params.dig(:email)
            @company_name = params.dig(:company_name)
        end

        ##
        # @return [String] The name of the developer.
        attr_accessor :name

        ##
        # @return [String] The first name of the person requesting the developer account.
        attr_accessor :first_name

        ##
        # @return [String] The last name of the person requesting the developer account.
        attr_accessor :last_name

        ##
        # @return [Email] The email address of the developer.
        attr_accessor :email

        ##
        # @return [String] The company name of the developer.
        attr_accessor :company_name

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'name' => @name,
                'firstName' => @first_name,
                'lastName' => @last_name,
                'email' => @email,
                'companyName' => @company_name,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
