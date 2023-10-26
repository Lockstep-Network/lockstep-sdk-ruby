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
    # Credit Memos reflect credits granted to a customer for various reasons, such as discounts or refunds.
    # Credit Memos may be applied to Invoices as Payments. When a Credit Memo is applied as payment to an Invoice,
    # Lockstep creates a Credit Memo Application record to track the amount from the Credit Memo that was applied
    # as payment to the Invoice. You can examine Credit Memo Application records to track which Invoices were paid
    # using this Credit.
    class CreditMemoAppliedModel

        ##
        # Initialize the CreditMemoAppliedModel using the provided prototype
        def initialize(params = {})
            @credit_memo_applied_id = params.dig(:credit_memo_applied_id)
            @group_key = params.dig(:group_key)
            @invoice_id = params.dig(:invoice_id)
            @credit_memo_invoice_id = params.dig(:credit_memo_invoice_id)
            @erp_key = params.dig(:erp_key)
            @erp_update_status = params.dig(:erp_update_status)
            @erp_update_action = params.dig(:erp_update_action)
            @entry_number = params.dig(:entry_number)
            @apply_to_invoice_date = params.dig(:apply_to_invoice_date)
            @credit_memo_applied_amount = params.dig(:credit_memo_applied_amount)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
            @app_enrollment_id = params.dig(:app_enrollment_id)
            @source_modified_date = params.dig(:source_modified_date)
            @attachments = params.dig(:attachments)
            @notes = params.dig(:notes)
            @custom_field_definitions = params.dig(:custom_field_definitions)
            @custom_field_values = params.dig(:custom_field_values)
            @credit_memo_invoice = params.dig(:credit_memo_invoice)
            @invoice = params.dig(:invoice)
        end

        ##
        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :credit_memo_applied_id

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Uuid] The Lockstep ID of the Invoice to which this credit memo was applied. This Invoice's outstanding balance was reduced by the value of the field `CreditMemoAppliedAmount` on the date `ApplyToInvoiceDate`. Example: Company ABC received a credit memo, CM000123 for $500. Company ABC then chooses to apply this credit memo to reduce the balance of the invoice PO1000578. The `InvoiceErpKey` is the Lockstep Platform ID number of Invoice `PO1000578`.
        attr_accessor :invoice_id

        ##
        # @return [Uuid] The Lockstep ID of the Invoice of type "Credit Memo" that was consumed in this payment application event. Example: Company ABC received a credit memo, CM000123 for $500. Company ABC then chooses to apply this credit memo to reduce the balance of the invoice PO1000578. The `CreditMemoInvoiceId` is the Lockstep Platform ID number of Invoice `CM000123`.
        attr_accessor :credit_memo_invoice_id

        ##
        # @return [String] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key

        ##
        # @return [ErpUpdateStatus] Possible statuses for a record that supports ERP Update.
        attr_accessor :erp_update_status

        ##
        # @return [ErpUpdateAction] Possible actions for a record that supports ERP Update.
        attr_accessor :erp_update_action

        ##
        # @return [Int32] Reference number for the applied credit memo.
        attr_accessor :entry_number

        ##
        # @return [Date-time] The date on which this credit memo was applied to the Invoice represented by `InvoiceId`.
        attr_accessor :apply_to_invoice_date

        ##
        # @return [Double] The amount of the credit memo that was applied to the Invoice represented by `InvoiceId`.
        attr_accessor :credit_memo_applied_amount

        ##
        # @return [Date-time] Date credit memo applied record was created.
        attr_accessor :created

        ##
        # @return [Uuid] The id of the user who created this applied credit memo.
        attr_accessor :created_user_id

        ##
        # @return [Date-time] Date credit memo applied record was modified.
        attr_accessor :modified

        ##
        # @return [Uuid] The id of the user who modified this applied credit memo.
        attr_accessor :modified_user_id

        ##
        # @return [Uuid] The AppEnrollmentId of the application that imported this record. For accounts with more than one financial system connected, this field identifies the originating financial system that produced this record. This value is null if this record was not loaded from an external ERP or financial system.
        attr_accessor :app_enrollment_id

        ##
        # @return [Date-time] The date on which this record was last modified in source ERP.
        attr_accessor :source_modified_date

        ##
        # @return [AttachmentModel] A collection of attachments linked to this record. To retrieve this collection, specify `Attachments` in the `include` parameter when retrieving data. To create an attachment, use the [Upload Attachment](https://developer.lockstep.io/reference/post_api-v1-attachments) endpoint with the `TableKey` to `CreditMemoApplied` and the `ObjectKey` set to the `CreditMemoAppliedId` for this record. For more information on extensibility, see [linking extensible metadata to objects](https://developer.lockstep.io/docs/custom-fields#linking-metadata-to-an-object).
        attr_accessor :attachments

        ##
        # @return [NoteModel] A collection of notes linked to this record. To retrieve this collection, specify `Notes` in the `include` parameter when retrieving data. To create a note, use the [Create Note](https://developer.lockstep.io/reference/post_api-v1-notes) endpoint with the `TableKey` to `CreditMemoApplied` and the `ObjectKey` set to the `CreditMemoAppliedId` for this record. For more information on extensibility, see [linking extensible metadata to objects](https://developer.lockstep.io/docs/custom-fields#linking-metadata-to-an-object).
        attr_accessor :notes

        ##
        # @return [CustomFieldDefinitionModel] A collection of custom fields linked to this record. To retrieve this collection, specify `CustomFieldDefinitions` in the `include` parameter when retrieving data. To create a custom field, use the [Create Custom Field](https://developer.lockstep.io/reference/post_api-v1-customfieldvalues) endpoint with the `TableKey` to `CreditMemoApplied` and the `ObjectKey` set to the `CreditMemoAppliedId` for this record. For more information on extensibility, see [linking extensible metadata to objects](https://developer.lockstep.io/docs/custom-fields#linking-metadata-to-an-object).
        attr_accessor :custom_field_definitions

        ##
        # @return [CustomFieldValueModel] A collection of custom fields linked to this record. To retrieve this collection, specify `CustomFieldValues` in the `include` parameter when retrieving data. To create a custom field, use the [Create Custom Field](https://developer.lockstep.io/reference/post_api-v1-customfieldvalues) endpoint with the `TableKey` to `CreditMemoApplied` and the `ObjectKey` set to the `CreditMemoAppliedId` for this record. For more information on extensibility, see [linking extensible metadata to objects](https://developer.lockstep.io/docs/custom-fields#linking-metadata-to-an-object).
        attr_accessor :custom_field_values

        ##
        # @return [InvoiceModel] The credit memo invoice associated with this applied credit memo
        attr_accessor :credit_memo_invoice

        ##
        # @return [InvoiceModel] The invoice associated with this applied credit memo
        attr_accessor :invoice

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'creditMemoAppliedId' => @credit_memo_applied_id,
                'groupKey' => @group_key,
                'invoiceId' => @invoice_id,
                'creditMemoInvoiceId' => @credit_memo_invoice_id,
                'erpKey' => @erp_key,
                'erpUpdateStatus' => @erp_update_status,
                'erpUpdateAction' => @erp_update_action,
                'entryNumber' => @entry_number,
                'applyToInvoiceDate' => @apply_to_invoice_date,
                'creditMemoAppliedAmount' => @credit_memo_applied_amount,
                'created' => @created,
                'createdUserId' => @created_user_id,
                'modified' => @modified,
                'modifiedUserId' => @modified_user_id,
                'appEnrollmentId' => @app_enrollment_id,
                'sourceModifiedDate' => @source_modified_date,
                'attachments' => @attachments,
                'notes' => @notes,
                'customFieldDefinitions' => @custom_field_definitions,
                'customFieldValues' => @custom_field_values,
                'creditMemoInvoice' => @credit_memo_invoice,
                'invoice' => @invoice,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
