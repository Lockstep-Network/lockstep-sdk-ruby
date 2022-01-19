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

    # Credit Memos reflect credits granted to a customer for various reasons, such as discounts or refunds.
    # Credit Memos may be applied to Invoices as Payments. When a Credit Memo is applied as payment to an Invoice,
    # Lockstep creates a Credit Memo Application record to track the amount from the Credit Memo that was applied
    # as payment to the Invoice. You can examine Credit Memo Application records to track which Invoices were paid
    # using this Credit.
    class CreditMemoAppliedModel

        # Initialize the CreditMemoAppliedModel using the provided prototype
        def initialize(params = {})
            @credit_memo_applied_id = params.fetch(:credit_memo_applied_id)
            @group_key = params.fetch(:group_key)
            @invoice_id = params.fetch(:invoice_id)
            @credit_memo_invoice_id = params.fetch(:credit_memo_invoice_id)
            @erp_key = params.fetch(:erp_key)
            @entry_number = params.fetch(:entry_number)
            @apply_to_invoice_date = params.fetch(:apply_to_invoice_date)
            @credit_memo_applied_amount = params.fetch(:credit_memo_applied_amount)
            @created = params.fetch(:created)
            @created_user_id = params.fetch(:created_user_id)
            @modified = params.fetch(:modified)
            @modified_user_id = params.fetch(:modified_user_id)
            @app_enrollment_id = params.fetch(:app_enrollment_id)
            @attachments = params.fetch(:attachments)
            @notes = params.fetch(:notes)
            @custom_field_definitions = params.fetch(:custom_field_definitions)
            @custom_field_values = params.fetch(:custom_field_values)
        end

        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :credit_memo_applied_id
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [Uuid] The id of the invoice
        attr_accessor :invoice_id
        # @return [Uuid] The id of the credit memo invoice
        attr_accessor :credit_memo_invoice_id
        # @return [String] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key
        # @return [Int32] Reference number for the applied credit memo.
        attr_accessor :entry_number
        # @return [Date-time] Date payment applied to credit memo.
        attr_accessor :apply_to_invoice_date
        # @return [Double] Amount applied to credit memo.
        attr_accessor :credit_memo_applied_amount
        # @return [Date-time] Date credit memo applied record was created.
        attr_accessor :created
        # @return [Uuid] The id of the user who created this applied credit memo.
        attr_accessor :created_user_id
        # @return [Date-time] Date credit memo applied record was modified.
        attr_accessor :modified
        # @return [Uuid] The id of the user who modified this applied credit memo.
        attr_accessor :modified_user_id
        # @return [Uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :app_enrollment_id
        # @return [AttachmentModel] All attachments attached to applied Credit Memo. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments
        # @return [NoteModel] All notes attached to this applied Credit Memo. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes
        # @return [CustomFieldDefinitionModel] All definitions attached to this applied Credit Memo. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_definitions
        # @return [CustomFieldValueModel] All values attached to this Credit Memo. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_values
    end
end
