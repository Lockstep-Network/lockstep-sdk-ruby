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
    class creditMemoAppliedModel
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :credit_memo_applied_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The id of the invoice
        attr_accessor :invoice_id
        # @return [uuid] The id of the credit memo invoice
        attr_accessor :credit_memo_invoice_id
        # @return [string] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key
        # @return [int32] Reference number for the applied credit memo.
        attr_accessor :entry_number
        # @return [date-time] Date payment applied to credit memo.
        attr_accessor :apply_to_invoice_date
        # @return [double] Amount applied to credit memo.
        attr_accessor :credit_memo_applied_amount
        # @return [date-time] Date credit memo applied record was created.
        attr_accessor :created
        # @return [uuid] The id of the user who created this applied credit memo.
        attr_accessor :created_user_id
        # @return [date-time] Date credit memo applied record was modified.
        attr_accessor :modified
        # @return [uuid] The id of the user who modified this applied credit memo.
        attr_accessor :modified_user_id
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :app_enrollment_id
        # @return [attachmentModel] All attachments attached to applied Credit Memo. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments
        # @return [noteModel] All notes attached to this applied Credit Memo. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes
        # @return [customFieldDefinitionModel] All definitions attached to this applied Credit Memo. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_definitions
        # @return [customFieldValueModel] All values attached to this Credit Memo. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_values
    end
end
