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
    # A Workflow Status represents the state for a specific workflow for an entity.
    class WorkflowStatusModel

        ##
        # Initialize the WorkflowStatusModel using the provided prototype
        def initialize(params = {})
            @id = params.dig(:id)
            @name = params.dig(:name)
            @description = params.dig(:description)
            @parent_workflow_status_id = params.dig(:parent_workflow_status_id)
            @category = params.dig(:category)
            @code = params.dig(:code)
            @is_notes_required = params.dig(:is_notes_required)
            @promote_to_erp = params.dig(:promote_to_erp)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
        end

        ##
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Accounting Data Services platform.
        attr_accessor :id

        ##
        # @return [String] The name of the workflow status.
        attr_accessor :name

        ##
        # @return [String] The description explaining the use of the workflow status.
        attr_accessor :description

        ##
        # @return [Uuid] The prior workflow status ID.
        attr_accessor :parent_workflow_status_id

        ##
        # @return [String] The category of the workflow status.
        attr_accessor :category

        ##
        # @return [String] The code of the workflow status.
        attr_accessor :code

        ##
        # @return [Boolean] Indicates whether notes are required or not.
        attr_accessor :is_notes_required

        ##
        # @return [Boolean] Indicates whether the status change should be reported to the ERP or not.
        attr_accessor :promote_to_erp

        ##
        # @return [Date-time] The date that the workflow status was created.
        attr_accessor :created

        ##
        # @return [Uuid] The ID of the user who created the workflow status.
        attr_accessor :created_user_id

        ##
        # @return [Date-time] The date that the workflow status was last modified.
        attr_accessor :modified

        ##
        # @return [Uuid] The ID of the user who last modified the workflow status.
        attr_accessor :modified_user_id

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'id' => @id,
                'name' => @name,
                'description' => @description,
                'parentWorkflowStatusId' => @parent_workflow_status_id,
                'category' => @category,
                'code' => @code,
                'isNotesRequired' => @is_notes_required,
                'promoteToErp' => @promote_to_erp,
                'created' => @created,
                'createdUserId' => @created_user_id,
                'modified' => @modified,
                'modifiedUserId' => @modified_user_id,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
