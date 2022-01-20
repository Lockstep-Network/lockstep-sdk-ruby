#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @author     Manish Narayanan <manish.n@lockstep.io>
# @author     Rishi Rajkumar Jawahar <rjawahar@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


module LockstepSdk

    # Model containing information to create a new developer account.
    class DeveloperAccountSubmitModel

        # Initialize the DeveloperAccountSubmitModel using the provided prototype
        def initialize(params = {})
            @name = params.dig(:name)
            @email = params.dig(:email)
            @company_name = params.dig(:company_name)
        end

        # @return [String] The name of the developer.
        attr_accessor :name
        # @return [Email] The email address of the developer.
        attr_accessor :email
        # @return [String] The company name of the developer.
        attr_accessor :company_name
    end

    def as_json(options={})
        {
            'name' => @name,
            'email' => @email,
            'companyName' => @company_name,
        }
    end

    def to_json(*options)
        as_json(*options).to_json(*options)
    end
end
