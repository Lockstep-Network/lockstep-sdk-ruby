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

    # Represents a Code Definition.  Codes can be used as shortened, human readable strings.
    # Additionally, this table can be used to store lists of system values for Lockstep objects.
    class CodeDefinitionModel

        # Initialize the CodeDefinitionModel using the provided prototype
        def initialize(params = {})
            @code_definition_id = params.fetch(:code_definition_id)
            @group_key = params.fetch(:group_key)
            @code_type = params.fetch(:code_type)
            @code = params.fetch(:code)
            @code_description = params.fetch(:code_description)
            @created = params.fetch(:created)
            @created_user_id = params.fetch(:created_user_id)
            @modified = params.fetch(:modified)
            @modified_user_id = params.fetch(:modified_user_id)
        end

        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :code_definition_id
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [String] The type of the Code Definition
        attr_accessor :code_type
        # @return [String] The Code to be defined.
        attr_accessor :code
        # @return [String] The definition of the Code
        attr_accessor :code_description
        # @return [Date-time] The date that the Code Definition was created
        attr_accessor :created
        # @return [Uuid] The ID of the user who created the Code Definition
        attr_accessor :created_user_id
        # @return [Date-time] The date the Code Definition was last modified
        attr_accessor :modified
        # @return [Uuid] The ID of the user who last modified the Code Definition
        attr_accessor :modified_user_id
    end
end
