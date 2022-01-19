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

    # Model containing information to create a new developer account.
    class DeveloperAccountSubmitModel

        # Initialize the DeveloperAccountSubmitModel using the provided prototype
        def initialize(params = {})
            @name = params.fetch(:name)
            @email = params.fetch(:email)
            @company_name = params.fetch(:company_name)
        end

        # @return [String] The name of the developer.
        attr_accessor :name
        # @return [Email] The email address of the developer.
        attr_accessor :email
        # @return [String] The company name of the developer.
        attr_accessor :company_name
    end
end
