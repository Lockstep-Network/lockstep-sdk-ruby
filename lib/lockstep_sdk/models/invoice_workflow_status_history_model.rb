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
    # A Invoice Workflow Status History represents prior workflow statuses of an E-Invoice.
    class InvoiceWorkflowStatusHistoryModel

        ##
        # Initialize the InvoiceWorkflowStatusHistoryModel using the provided prototype
        def initialize(params = {})
            @invoice_workflow_status_history_id = params.dig(:invoice_workflow_status_history_id)
            @invoice_id = params.dig(:invoice_id)
            @workflow_status_id = params.dig(:workflow_status_id)
            @group_key = params.dig(:group_key)
            @workflow_status_notes = params.dig(:workflow_status_notes)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
        end

        ##
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Accounting Data Services platform.
        attr_accessor :invoice_workflow_status_history_id

        ##
        # @return [Uuid] The invoice ID associated with the invoice workflow status history.
        attr_accessor :invoice_id

        ##
        # @return [Uuid] The workflow status ID associated with the invoice workflow status history.
        attr_accessor :workflow_status_id

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Accounting Data Services Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [String] The notes for the invoice workflow status history.
        attr_accessor :workflow_status_notes

        ##
        # @return [Date-time] The date that the invoice workflow status history was created.
        attr_accessor :created

        ##
        # @return [Uuid] The ID of the user who created the invoice workflow status history.
        attr_accessor :created_user_id

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'invoiceWorkflowStatusHistoryId' => @invoice_workflow_status_history_id,
                'invoiceId' => @invoice_id,
                'workflowStatusId' => @workflow_status_id,
                'groupKey' => @group_key,
                'workflowStatusNotes' => @workflow_status_notes,
                'created' => @created,
                'createdUserId' => @created_user_id,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
