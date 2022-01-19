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

    # An Activity contains information about work being done on a specific accounting task.
    # You can use Activities to track information about who has been assigned a specific task,
    # the current status of the task, the name and description given for the particular task,
    # the priority of the task, and any amounts collected, paid, or credited for the task.
    class activity_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :activity_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The ID of the company to which this activity belongs.
        attr_accessor :company_id
        # @return [string] The type code of the activity
        attr_accessor :activity_type_code
        # @return [string] The name of the activity. The name is a short name provided by the person who created the activity that can be displayed in a list.
        attr_accessor :activity_name
        # @return [string] A description of the activity. This field contains more detailed text about the activity and can be lengthy.
        attr_accessor :activity_description
        # @return [string] The status of the activity.
        attr_accessor :activity_status
        # @return [boolean] True if this activity is currently "open", which indicates that the activitiy is currently in progress.
        attr_accessor :is_open
        # @return [string] The priority of the activity.
        attr_accessor :priority
        # @return [uuid] The ID of the user the activity is assigned to.
        attr_accessor :user_assigned_to
        # @return [date-time] The date the activity was assigned.
        attr_accessor :date_assigned
        # @return [date-time] The date the activity was closed.
        attr_accessor :date_closed
        # @return [date-time] If this activity has been "snoozed", this field will be non-null and will contain the date when the activity will be displayed. Until that date arrives, the activity will remain hidden.
        attr_accessor :snooze_until_date
        # @return [date-time] The date on which this activity was created.
        attr_accessor :created
        # @return [uuid] The ID of the user who created this activity.
        attr_accessor :created_user_id
        # @return [date-time] The date on which this activity was last modified.
        attr_accessor :modified
        # @return [uuid] The ID of the user who last modified this activity.
        attr_accessor :modified_user_id
        # @return [double] Amount collected (if any) for the activity.
        attr_accessor :amount_collected
        # @return [double] Amount paid (if any) for the activity.
        attr_accessor :amount_paid
        # @return [double] Credit given (if any) for the activity.
        attr_accessor :credit_given
        # @return [boolean] True if this activity is to be shown in an "unread" state. When an activity is read by a person it is assigned to, this flag is set to false.
        attr_accessor :is_unread
        # @return [boolean] Activities may be archived when they should be hidden from the user. When this flag is true, this activity should be hidden.
        attr_accessor :is_archived
        # @return [company_model] The company associated with the activity To retrieve this collection, specify `Company` in the "Include" parameter for your query.
        attr_accessor :company
        # @return [string] The name of the user the activity is assigned to
        attr_accessor :user_assigned_to_name
        # @return [attachment_model] All attachments attached to applied activity. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments
        # @return [note_model] All notes attached to this applied activity. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes
        # @return [custom_field_definition_model] All definitions attached to this applied activity. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_definitions
        # @return [custom_field_value_model] All values attached to this activity. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_values
        # @return [activity_xref_model] All references attached to this applied activity. To retrieve this collection, specify `References` in the "Include" parameter for your query.
        attr_accessor :references
    )

    # Represents an item belonging to the activity stream.
    class activity_stream_item_model
        # @return [uuid] The object key of the activity stream item.
        attr_accessor :object_key
        # @return [string] The type code of the activity stream item.
        attr_accessor :activity_stream_type
        # @return [string] The text body description for this Activity Stream Item.
        attr_accessor :text_value
        # @return [date-time] The date on which this activity stream item was created.
        attr_accessor :created
        # @return [uuid] The ID of the user who created this activity.
        attr_accessor :created_user_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [string] The sender's email address if activity stream item is an Email.
        attr_accessor :from_email_address
        # @return [string] The recipient's email address if activity stream item is an Email.
        attr_accessor :to_email_address
        # @return [string] The name of the contact sending the activity otherwise null.
        attr_accessor :from_contact_name
        # @return [string] The name of the contact sending the activity otherwise null.
        attr_accessor :to_contact_name
    )

    class activity_xref_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this is added to the Lockstep platform.
        attr_accessor :activity_xref_id
        # @return [uuid] The ID of the activity to which this reference belongs.
        attr_accessor :activity_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [string] The name of the table the activity reference is associated with
        attr_accessor :table_key
        # @return [string] The ID of the object the activity reference is associated with
        attr_accessor :object_key
    )

    # Represents an aging record
    class aging_model
        # @return [int32] Aging bucket of outstanding balance data (days past due date of invoice)
        attr_accessor :bucket
        # @return [string] Currency code of aging bucket
        attr_accessor :currency_code
        # @return [double] Outstanding balance for the given aging bucket
        attr_accessor :outstanding_balance
    )

    # An API Key is an authentication token that you may use with the Lockstep API.  Because API Keys
    # do not have an expiration date, they are well suited for unattended processes.  Each API Key
    # is associated with a user, and may be revoked to prevent it from accessing the Lockstep API.
    # When you create an API Key, make sure to save the value in a secure location.  Lockstep cannot
    # retrieve an API Key once it is created.
    # 
    # For more information, see [API Keys](https://developer.lockstep.io/docs/api-keys).
    class api_key_model
        # @return [uuid] The unique identifier for the API key.
        attr_accessor :api_key_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [string] The name of the API key.
        attr_accessor :name
        # @return [string] The API key to use for authentication. This will only be returned upon creation of the API key. All other times, this value will be `null`. For more information, see [API Keys](https://developer.lockstep.io/docs/api-keys).
        attr_accessor :api_key
        # @return [string] The first 10 characters of the API key. This information can be used to ensure that you are looking at the correct API Key, but cannot be used for authentication.
        attr_accessor :key_prefix
        # @return [date-time] The date the API key was created.
        attr_accessor :created
        # @return [uuid] The user that created the API key.
        attr_accessor :created_user_id
        # @return [date-time] The date the API key was revoked.
        attr_accessor :revoked
        # @return [uuid] The user who revoked the API key.
        attr_accessor :revoked_user_id
        # @return [date-time] The UTC datetime when the API key expires.
        attr_accessor :expires
    )

    # App enrollment and custom field merged into one
    class app_enrollment_custom_field_model
        # @return [uuid] Unique id for the app enrollment
        attr_accessor :app_enrollment_id
        # @return [uuid] Id of enrolled app
        attr_accessor :app_id
        # @return [string] The name of the application
        attr_accessor :name
        # @return [string] Tag for what type of app the application is
        attr_accessor :app_type
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] Unique Id for the custom field definition
        attr_accessor :custom_field_definition_id
        # @return [string] Text to display in-application for custom field
        attr_accessor :custom_field_label
        # @return [string] Data type of the custom field definition
        attr_accessor :data_type
        # @return [int32] Used for display logic when multiple app enrollment custom fields exist
        attr_accessor :sort_order
        # @return [string] String of data for field
        attr_accessor :string_value
        # @return [double] Number data for field
        attr_accessor :numeric_value
    )

    # An AppEnrollment represents an app that has been enrolled to the current account.  When you sign up for an
    # app using the Lockstep Platform, you obtain an enrollment record for that app.  Example types of apps include
    # connectors and feature enhancement apps. The App Enrollment object contains information about this app, its
    # configuration, and settings.
    # 
    # See [Applications and Enrollments](https://developer.lockstep.io/docs/applications-and-enrollments) for more information.
    class app_enrollment_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :app_enrollment_id
        # @return [uuid] The ID number of the Application that this enrollment represents. You can fetch information about this Application object by specifying `App` in the "Include" parameter for your request.
        attr_accessor :app_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [boolean] Determines whether the app enrollment is in use
        attr_accessor :is_active
        # @return [date-time] Created date
        attr_accessor :created
        # @return [uuid] Created user ID
        attr_accessor :created_user_id
        # @return [date-time] Last modified date
        attr_accessor :modified
        # @return [uuid] Last user ID to modify
        attr_accessor :modified_user_id
        # @return [string] Stores schedule information for the application enrollment see https://en.wikipedia.org/wiki/Cron
        attr_accessor :cron_settings
        # @return [boolean] Flag indicating if the Sync process should be ran on the specified schedule
        attr_accessor :sync_schedule_is_active
        # @return [application_model] The Application to which this AppEnrollment belongs. Contains general name, description, logo, and other metadata about this application. To retrieve this object, specify `App` in the "Include" parameter for your query.
        attr_accessor :app
        # @return [custom_field_definition_model] All definitions attached to this app. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_definitions
        # @return [custom_field_value_model] All values attached to this app. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_values
        # @return [sync_request_model] Data about the last sync attached to this app enrollment To retrieve this collection, specify `LastSync` in the "Include" parameter for your query.
        attr_accessor :last_sync
        # @return [sync_request_model] Data about the last successful sync associated with this enrollment
        attr_accessor :last_successful_sync
        # @return [erp_info_data_model] Use `ConnectorInfo` instead.
        attr_accessor :erp_info
        # @return [connector_info_model] Optional data necessary to create an app enrollment for a supported connector. Only enter relevant fields for the given connector.
        attr_accessor :connector_info
    )

    # An Application represents a feature available to customers within the Lockstep Platform.  You can create
    # Applications by working with your Lockstep business development manager and publish them on the platform
    # so that customers can browse and find your Application on the Lockstep Platform Marketplace.  When a
    # customer adds an Application to their account, they obtain an AppEnrollment which represents that customer's
    # instance of this Application.  The customer-specific AppEnrollment contains a customer's configuration data
    # for the Application, which is not customer-specific.
    # 
    # See [Applications and Enrollments](https://developer.lockstep.io/docs/applications-and-enrollments) for more information.
    # --swaggerCategory:Platform
    class application_model
        # @return [uuid] A unique code identifying this application
        attr_accessor :app_id
        # @return [string] The name of this application
        attr_accessor :name
        # @return [string] Brief summary of this application shown as a subtitle
        attr_accessor :description
        # @return [string] Tag for what type of app this is
        attr_accessor :app_type
        # @return [uuid] The ID of the owner
        attr_accessor :owner_id
        # @return [uri] The URL to visit for more information about this application
        attr_accessor :project_url
        # @return [uri] The URL for the icon for this application
        attr_accessor :icon_url
        # @return [string] The description of the price for this application
        attr_accessor :price_terms
        # @return [uuid] The ID of the user who created this application
        attr_accessor :created_user_id
        # @return [uuid] The ID of the user who last modified this application
        attr_accessor :modified_user_id
        # @return [date-time] The date this application was created
        attr_accessor :created
        # @return [date-time] The date this application was last modified
        attr_accessor :modified
        # @return [boolean] Flag indicating if the application is active.
        attr_accessor :is_active
        # @return [uri] URL to the Wiki for the Application
        attr_accessor :wiki_url
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [note_model] All notes attached to this app. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes
        # @return [attachment_model] All attachments attached to this app. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments
        # @return [custom_field_definition_model] All definitions attached to the application. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_definitions
        # @return [custom_field_value_model] All values attached to the application. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_values
    )

    # Aggregated Accounts Receivable Aging information.
    class ar_aging_header_info_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [string] The aging bucket this data belongs to.
        attr_accessor :report_bucket
        # @return [int32] The total number of customers.
        attr_accessor :total_customers
        # @return [int32] The total number of invoices outstanding.
        attr_accessor :total_invoices_outstanding
        # @return [double] The total amount outstanding.
        attr_accessor :total_outstanding_amount
        # @return [double] The total amount for AR.
        attr_accessor :total_ar_amount
        # @return [double] Portion of Total AR this data represents.
        attr_accessor :percentage_of_total_ar
    )

    # Aggregated Accounts Receivable information.
    class ar_header_info_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [date] The date of the report
        attr_accessor :report_period
        # @return [int32] The total number of customers.
        attr_accessor :total_customers
        # @return [int32] The total number of invoices.
        attr_accessor :total_invoices
        # @return [double] The total amount invoiced.
        attr_accessor :total_invoiced_amount
        # @return [double] The total number of unapplied payments.
        attr_accessor :total_unapplied_payments
        # @return [double] The total amount of collected payments.
        attr_accessor :total_collected
        # @return [double] The total accounts receivable amount.
        attr_accessor :total_ar_amount
        # @return [int32] The number of paid invoices.
        attr_accessor :total_invoices_paid
        # @return [int32] The number of past due invoices.
        attr_accessor :total_invoices_past_due
        # @return [int32] The number of past due invoices for the last 90 days.
        attr_accessor :total_invoices90_days_past_due
        # @return [double] The total amount past due.
        attr_accessor :total_past_due_amount
        # @return [double] The total past due for the past 90 days.
        attr_accessor :total_past_due_amount90_days
        # @return [double] Portion of Total AR that is Past due.
        attr_accessor :percentage_of_total_ar
        # @return [double] Daily sales outstanding.
        attr_accessor :dso
        # @return [double] The total amount invoiced, due this year.
        attr_accessor :total_invoice_amount_current_year
        # @return [double] The total amount invoiced, due last year.
        attr_accessor :total_invoice_amount_previous_year
        # @return [double] The total of all payments received this year.
        attr_accessor :total_payment_amount_current_year
        # @return [int32] The total amount of payments received in the last 30 days
        attr_accessor :total_collected_past_thirty_days
        # @return [int32] The total amount of Invoices paid in the last 30 days
        attr_accessor :total_invoices_paid_past_thirty_days
        # @return [double] Portion of Total AR that is 90+ days Past due.
        attr_accessor :percentage_of_total_ar90_days_past_due
    )

    # Contains summarized data for an invoice
    class at_risk_invoice_summary_model
        # @return [date] The date of the report
        attr_accessor :report_date
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The ID number of the counterparty for the invoice, for example, a customer or vendor.
        attr_accessor :customer_id
        # @return [uuid] The unique ID number of this invoice.
        attr_accessor :invoice_id
        # @return [string] A reference code that is used to identify this invoice. The meaning of this field is specific to the ERP or accounting system used by the user.
        attr_accessor :invoice_number
        # @return [date] The reporting date for this invoice.
        attr_accessor :invoice_date
        # @return [string] The name of the counterparty for the invoice, for example, a customer or vendor.
        attr_accessor :customer_name
        # @return [string] The status of the invoice.
        attr_accessor :status
        # @return [date] The due date of the invoice.
        attr_accessor :payment_due_date
        # @return [double] The total amount of the Invoice.
        attr_accessor :invoice_amount
        # @return [double] The remaining balance value of this invoice.
        attr_accessor :outstanding_balance
        # @return [string] A code identifying the type of this Invoice.
        attr_accessor :invoice_type_code
        # @return [date] The date stamp for the newest Activity on this Invoice.
        attr_accessor :newest_activity
        # @return [int32] The number of days this Invoice is past due.
        attr_accessor :days_past_due
        # @return [string] The memo text of the payments associated to this invoice.
        attr_accessor :payment_numbers
        # @return [uuid] The ids of the payments associated to this invoice.
        attr_accessor :payment_ids
    )

    # Aggregated Attachment status information.
    class attachment_header_info_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The CompanyId associated with the attachment status report. Providing a null value will return an attachment summary for all attachments associated to the provided GroupKey
        attr_accessor :company_id
        # @return [int32] The total number of attachments associated with the provided GroupKey and CompanyId.
        attr_accessor :total_attachments
        # @return [int32] The total number of archived attachments associated with the provided GroupKey and CompanyId.
        attr_accessor :total_archived
        # @return [int32] The total number of active attachments associated with the provided GroupKey and CompanyId.
        attr_accessor :total_active
    )

    # Represents a user uploaded attachment
    class attachment_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :attachment_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [string] The name of the table the attachment is associated with
        attr_accessor :table_key
        # @return [uuid] The ID of the object the attachment is associated with
        attr_accessor :object_key
        # @return [string] Name of the file
        attr_accessor :file_name
        # @return [string] Extension type of the file
        attr_accessor :file_ext
        # @return [uuid] Corresponding AttachmentType object to describe this attachment
        attr_accessor :attachment_type_id
        # @return [boolean] Flag indicating the attachment was archived
        attr_accessor :is_archived
        # @return [uuid] 
        attr_accessor :origin_attachment_id
        # @return [boolean] Flag for if LS clients can see this file
        attr_accessor :view_internal
        # @return [boolean] Flag for if Vendors and customers can see this file
        attr_accessor :view_external
        # @return [date-time] The date the attachment was created
        attr_accessor :created
        # @return [uuid] Id of the user who made the file
        attr_accessor :created_user_id
    )

    # Input format used for bulk conversion route
    class bulk_currency_conversion_model
        # @return [date] The date for the currency rate
        attr_accessor :date
        # @return [string] The currency code This will be validated by the /api/v1/currencies data set
        attr_accessor :source_currency
    )

    # Represents the cashflow report based on a timeframe
    class cashflow_report_model
        # @return [int32] Timeframe in days the cashflow report is generated on
        attr_accessor :timeframe
        # @return [double] Amount of payments collected based in the timeframe
        attr_accessor :payments_collected
        # @return [int32] Number of payments collected based in the timeframe
        attr_accessor :payments_collected_count
        # @return [double] Amount of invoices billed based in the timeframe
        attr_accessor :invoices_billed
        # @return [int32] Number of invoices billed in the timeframe
        attr_accessor :invoices_billed_count
    )

    # Represents a Code Definition.  Codes can be used as shortened, human readable strings.
    # Additionally, this table can be used to store lists of system values for Lockstep objects.
    class code_definition_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :code_definition_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [string] The type of the Code Definition
        attr_accessor :code_type
        # @return [string] The Code to be defined.
        attr_accessor :code
        # @return [string] The definition of the Code
        attr_accessor :code_description
        # @return [date-time] The date that the Code Definition was created
        attr_accessor :created
        # @return [uuid] The ID of the user who created the Code Definition
        attr_accessor :created_user_id
        # @return [date-time] The date the Code Definition was last modified
        attr_accessor :modified
        # @return [uuid] The ID of the user who last modified the Code Definition
        attr_accessor :modified_user_id
    )

    # A Company represents a customer, a vendor, or a company within the organization of the account holder.
    # Companies can have parents and children, representing an organizational hierarchy of corporate entities.
    # You can use Companies to track projects and financial data under this Company label.
    # 
    # See [Vendors, Customers, and Companies](https://developer.lockstep.io/docs/companies-customers-and-vendors) for more information.
    class company_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :company_id
        # @return [string] The short name of the company.
        attr_accessor :company_name
        # @return [string] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key
        # @return [string] This field indicates the type of company. It can be one of a limited number of values: Company, Customer, Group, or Vendor. A company that represents both a customer and a vendor is identified as a CustomerVendor. * `Company` - This record represents a company that is part of the organization of the account holder. * `Customer` - This record represents a business entity that purchases things from the account holder. * `Group` - Only one record of type `GROUP` exists in each account. Contains your account profile. * `Vendor` - This record represents a business entity that sells things to the account holder. * `CustomerVendor` - Both a customer and a vendor.
        attr_accessor :company_type
        # @return [string] The status of the company. Companies can be either `Active` or `Inactive`. When matched to a Lockstep corporate profile, this value will change to reflect that this record will be kept in sync with that company's identity.
        attr_accessor :company_status
        # @return [uuid] If this business entity is part of an organization, this value is non-null and it is set to the `CompanyId` value of the parent company of this business entity. If this value is null, this business entity is a standalone.
        attr_accessor :parent_company_id
        # @return [uuid] For convenience, this field indicates the top-level parent company. This can be used to jump directly to the top parent in complex organizational hierarchies.
        attr_accessor :enterprise_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [boolean] This flag indicates whether the company is currently active. An inactive company should be hidden from the user interface but will still be available for querying.
        attr_accessor :is_active
        # @return [string] The default currency code used by this business entity. This value can be overridden for invoices in a different currency code. For a list of defined currency codes, see [Query Currencies](https://developer.lockstep.io/reference/get_api-v1-definitions-currencies)
        attr_accessor :default_currency_code
        # @return [string] The URL of this company's logo, if known.
        attr_accessor :company_logo_url
        # @return [uuid] The Lockstep `ContactId` of the primary contact for this company.
        attr_accessor :primary_contact_id
        # @return [string] Address info
        attr_accessor :address1
        # @return [string] Address info
        attr_accessor :address2
        # @return [string] Address info
        attr_accessor :address3
        # @return [string] Corporate Address info
        attr_accessor :corp_city
        # @return [string] Corporate Address info
        attr_accessor :corp_state
        # @return [string] Corporate Address info
        attr_accessor :corp_postal_code
        # @return [string] Corporate Address info
        attr_accessor :corp_country
        # @return [string] Corporate phone number
        attr_accessor :corp_phone
        # @return [string] Corporate fax number
        attr_accessor :corp_fax
        # @return [string] Address info
        attr_accessor :city
        # @return [string] Address info
        attr_accessor :state_region
        # @return [string] Address info
        attr_accessor :postal_code
        # @return [string] Address info
        attr_accessor :country
        # @return [string] Phone number
        attr_accessor :phone_number
        # @return [string] Fax number
        attr_accessor :fax_number
        # @return [date-time] The date this company was created
        attr_accessor :created
        # @return [uuid] The ID of the user who created this company
        attr_accessor :created_user_id
        # @return [date-time] The date this company was last modified
        attr_accessor :modified
        # @return [uuid] The ID of the user who last modified this company
        attr_accessor :modified_user_id
        # @return [string] The name of the user who last modified this company
        attr_accessor :modified_user_name
        # @return [string] Federal Tax ID
        attr_accessor :tax_id
        # @return [string] Dun & Bradstreet Number
        attr_accessor :duns_number
        # @return [email] AP (Accounts Payable) Email Address
        attr_accessor :ap_email_address
        # @return [email] AR (Accounts Receivable) Email Address
        attr_accessor :ar_email_address
        # @return [string] For companies that use a custom domain name for their email system, this is the domain name used by this company. If this value is known, new emails that come in from this domain will be connected to this company.
        attr_accessor :domain_name
        # @return [uuid] Identifier for classification of this company.
        attr_accessor :company_classification_code_def_id
        # @return [string] Description of the company.
        attr_accessor :description
        # @return [string] Website URL for this company.
        attr_accessor :website
        # @return [uuid] The AppEnrollmentId of the application that imported this company record. For accounts with more than one financial system connected, this field identifies the originating financial system that produced this record.
        attr_accessor :app_enrollment_id
        # @return [note_model] All notes attached to this company. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes
        # @return [attachment_model] All attachments attached to this company. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments
        # @return [contact_model] All contacts attached to this company. To retrieve this collection, specify `Contacts` in the "Include" parameter for your query.
        attr_accessor :contacts
        # @return [object] All invoices attached to this company. To retrieve this collection, specify `Invoices` in the "Include" parameter for your query. For more information on Invoices, see [InvoiceModel](https://developer.lockstep.io/reference/get_api-v1-invoices-id).
        attr_accessor :invoices
        # @return [custom_field_definition_model] All definitions attached to this company. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_definitions
        # @return [custom_field_value_model] All values attached to this company. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_values
        # @return [code_definition_model] Classification code definition for this company. To retrieve this collection, specify `Classification` in the "Include" parameter for your query.
        attr_accessor :company_classification_code_definition
    )

    # Represents all possible data required to set up an app enrollment for a connector.
    # Only send required fields for the given connector.
    class connector_info_model
        # @return [string] The authorization code returned from the first step of the OAuth2 flow https://oauth.net/2/grant-types/authorization-code/
        attr_accessor :auth_code
        # @return [string] The realm id of the account being granted permissions to access
        attr_accessor :realm_id
        # @return [string] The redirect uri used for step one of the OAuth2.0 flow.
        attr_accessor :redirect_uri
        # @return [string] The email an email connection is being created for.
        attr_accessor :email
    )

    # A Contact contains information about a person or role within a Company.
    # You can use Contacts to track information about who is responsible for a specific project,
    # who handles invoices, or information about which role at a particular customer or
    # vendor you should speak with about invoices.
    class contact_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :contact_id
        # @return [uuid] The ID of the company to which this contact belongs.
        attr_accessor :company_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [string] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key
        # @return [string] The name of the contact.
        attr_accessor :contact_name
        # @return [string] A friendly human-readable code that describes this Contact.
        attr_accessor :contact_code
        # @return [string] The title of the contact.
        attr_accessor :title
        # @return [string] The role code for the contact.
        attr_accessor :role_code
        # @return [email] The email address of the contact.
        attr_accessor :email_address
        # @return [string] The phone number of the contact.
        attr_accessor :phone
        # @return [string] The fax number of the contact.
        attr_accessor :fax
        # @return [string] The first line of the address.
        attr_accessor :address1
        # @return [string] The second line of the address.
        attr_accessor :address2
        # @return [string] The third line of the address.
        attr_accessor :address3
        # @return [string] The city of the address.
        attr_accessor :city
        # @return [string] The state/region of the address.
        attr_accessor :state_region
        # @return [string] The postal/zip code of the address.
        attr_accessor :postal_code
        # @return [string] The two character country code of the address. This will be validated by the /api/v1/countries data set
        attr_accessor :country_code
        # @return [boolean] Flag indicating if the contact is active.
        attr_accessor :is_active
        # @return [uri] The webpage url of the contact.
        attr_accessor :webpage_url
        # @return [uri] The picture/avatar url of the contact.
        attr_accessor :picture_url
        # @return [date-time] The date on which this record was created.
        attr_accessor :created
        # @return [uuid] The ID of the user who created this contact.
        attr_accessor :created_user_id
        # @return [date-time] The date on which this record was last modified.
        attr_accessor :modified
        # @return [uuid] The ID of the user who last modified this contact.
        attr_accessor :modified_user_id
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :app_enrollment_id
        # @return [note_model] All notes attached to this company. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes
        # @return [attachment_model] All attachments attached to this company. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments
        # @return [custom_field_definition_model] All definitions attached to this contact. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_definitions
        # @return [custom_field_value_model] All values attached to this contact. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :custom_field_values
    )

    # Country model for ISO-3166
    class country_model
        # @return [string] Name of the country
        attr_accessor :name
        # @return [string] 2 letter alphabetic code for the given country
        attr_accessor :alpha2
        # @return [string] 3 letter alphabetic code for the given country
        attr_accessor :alpha3
        # @return [int32] Unique 3 digit number for the given country
        attr_accessor :country_code
        # @return [string] Region of the country
        attr_accessor :region
        # @return [string] Subregion of the country
        attr_accessor :sub_region
        # @return [string] Intermediate region of the country
        attr_accessor :intermediate_region
        # @return [int32] Numeric code for a region
        attr_accessor :region_code
        # @return [int32] Numeric code for a subregion
        attr_accessor :sub_region_code
        # @return [int32] Numeric code for an intermediate region
        attr_accessor :intermediate_region_code
        # @return [string] French name of the country
        attr_accessor :french_name
        # @return [string] A different name for a country
        attr_accessor :aliases
    )

    # Credit Memos reflect credits granted to a customer for various reasons, such as discounts or refunds.
    # Credit Memos may be applied to Invoices as Payments. When a Credit Memo is applied as payment to an Invoice,
    # Lockstep creates a Credit Memo Application record to track the amount from the Credit Memo that was applied
    # as payment to the Invoice. You can examine Credit Memo Application records to track which Invoices were paid
    # using this Credit.
    class credit_memo_applied_model
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
        # @return [attachment_model] All attachments attached to applied Credit Memo. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments
        # @return [note_model] All notes attached to this applied Credit Memo. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes
        # @return [custom_field_definition_model] All definitions attached to this applied Credit Memo. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_definitions
        # @return [custom_field_value_model] All values attached to this Credit Memo. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_values
    )

    # Contains information about a credit memo invoice
    class credit_memo_invoice_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :credit_memo_applied_id
        # @return [uuid] The id of the invoice
        attr_accessor :invoice_id
        # @return [uuid] The id of the credit memo invoice
        attr_accessor :credit_memo_invoice_id
        # @return [date] Date invoice applied to credit memo.
        attr_accessor :apply_to_invoice_date
        # @return [double] Amount applied to credit memo.
        attr_accessor :credit_memo_applied_amount
        # @return [string] An additional reference code that is sometimes used to identify this invoice. The meaning of this field is specific to the ERP or accounting system used by the user.
        attr_accessor :reference_code
        # @return [uuid] The ID number of the company that created this invoice.
        attr_accessor :company_id
        # @return [uuid] The ID number of the counterparty for the invoice, for example, a customer or vendor.
        attr_accessor :customer_id
        # @return [string] A code identifying the status of this invoice.
        attr_accessor :invoice_status_code
        # @return [double] The total value of this invoice, inclusive of all taxes and line items.
        attr_accessor :total_amount
        # @return [double] The remaining balance value of this invoice.
        attr_accessor :outstanding_balance_amount
    )

    # Represents an ISO-4217 currency code definition
    class currency_model
        # @return [string] Alphabetic code for the given currency
        attr_accessor :alpha_code
        # @return [string] Numeric code for the given currency
        attr_accessor :numeric_code
        # @return [string] Name of currency
        attr_accessor :currency_name
        # @return [int32] Number of places after the decimal for this currency
        attr_accessor :minor_unit
        # @return [string] Symbol for the given currency
        attr_accessor :symbol
    )

    # Represents a currency rate for specific currencies and date
    class currency_rate_model
        # @return [string] The source currency
        attr_accessor :source_currency
        # @return [string] The destination currency
        attr_accessor :destination_currency
        # @return [date] The date for the currency rate
        attr_accessor :date
        # @return [double] The currency rate value
        attr_accessor :currency_rate
    )

    # Contains customer details data
    class customer_details_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The unique ID of this customer
        attr_accessor :customer_id
        # @return [string] The unique ID of this customer
        attr_accessor :name
        # @return [string] Customer address info
        attr_accessor :address1
        # @return [string] Customer address info
        attr_accessor :address2
        # @return [string] Customer address info
        attr_accessor :address3
        # @return [string] Customer address info
        attr_accessor :city
        # @return [string] Customer address info
        attr_accessor :state
        # @return [string] Customer address info
        attr_accessor :postal_code
        # @return [string] Customer address country
        attr_accessor :country
        # @return [string] Customer phone number
        attr_accessor :phone_number
        # @return [string] Customer fax number
        attr_accessor :fax_number
        # @return [string] Customer AR email address
        attr_accessor :email
        # @return [uuid] Customer primary contact id
        attr_accessor :contact_id
        # @return [string] Customer primary contact name
        attr_accessor :contact_name
        # @return [string] Customer primary contact email address
        attr_accessor :contact_email
        # @return [int32] Customer number of outstanding invoices
        attr_accessor :outstanding_invoices
        # @return [double] Customer total outstanding invoice amount
        attr_accessor :outstanding_amount
        # @return [double] Customer total past due amount
        attr_accessor :amount_past_due
        # @return [customer_details_payment_model] Customer payments collected
        attr_accessor :payments
    )

    # Customer payment collected information
    class customer_details_payment_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] Unique identifier for payment
        attr_accessor :payment_id
        # @return [uuid] Unique identifier for payment applied
        attr_accessor :payment_applied_id
        # @return [string] Payment type
        attr_accessor :payment_type
        # @return [uuid] Unique identifier for invoice payment is associated with
        attr_accessor :invoice_id
        # @return [string] Invoice type payment is associated with
        attr_accessor :invoice_type_code
        # @return [string] Invoice reference code payment is associated with
        attr_accessor :invoice_reference_code
        # @return [double] Invoice total amount payment is associated with
        attr_accessor :invoice_total_amount
        # @return [date-time] Date payment placed
        attr_accessor :payment_date
        # @return [double] Amount payment was made for
        attr_accessor :payment_amount
    )

    # Contains summarized data for a customer
    class customer_summary_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The unique ID of this company.
        attr_accessor :company_id
        # @return [string] The name of the company.
        attr_accessor :company_name
        # @return [string] The name of the primary contact.
        attr_accessor :primary_contact
        # @return [int32] The number of outstanding invoices for this customer.
        attr_accessor :outstanding_invoices
        # @return [int32] The number of open invoices.
        attr_accessor :total_invoices_open
        # @return [int32] The number of past due invoices.
        attr_accessor :total_invoices_past_due
        # @return [int32] The number of closed invoices for this customer.
        attr_accessor :closed_invoices
        # @return [double] The total from collected payments.
        attr_accessor :amount_collected
        # @return [double] The total balance of outstanding invoices.
        attr_accessor :outstanding_amount
        # @return [double] The total amount past due for this customer.
        attr_accessor :amount_past_due
        # @return [double] The total value of unapplied Payments for this Customer.
        attr_accessor :unapplied_payments
        # @return [double] Portion of Total AR for this Customer that is Past due. (TotalPastDue / Total AR).
        attr_accessor :percent_of_total_ar
        # @return [double] Daily sales outstanding value for this Customer.
        attr_accessor :dso
        # @return [date] The date stamp for the newest Activity on this Customer.
        attr_accessor :newest_activity
    )

    # A Custom Field represents metadata added to an object within the Lockstep Platform.  Lockstep provides a
    # core definition for each object.  The core definition is intended to represent a level of compatibility
    # that provides support across most accounting systems and products.  When a user or developer requires
    # information beyond this core definition, you can use Custom Fields to represent this information.
    # 
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    class custom_field_definition_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :custom_field_definition_id
        # @return [string] Table to which this definition belongs
        attr_accessor :table_key
        # @return [uuid] Id of app this definition belongs to
        attr_accessor :app_id
        # @return [string] Text to display in-application for custom field
        attr_accessor :custom_field_label
        # @return [string] Data type of this definition
        attr_accessor :data_type
        # @return [int32] Used for display logic when multiple custom fields exist
        attr_accessor :sort_order
        # @return [date-time] Date created
        attr_accessor :created
        # @return [uuid] Id of user who created this definition
        attr_accessor :created_user_id
        # @return [date-time] Date modified
        attr_accessor :modified
        # @return [uuid] Id of user who modified this definition
        attr_accessor :modified_user_id
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :app_enrollment_id
    )

    # A Custom Field represents metadata added to an object within the Lockstep Platform.  Lockstep provides a
    # core definition for each object.  The core definition is intended to represent a level of compatibility
    # that provides support across most accounting systems and products.  When a user or developer requires
    # information beyond this core definition, you can use Custom Fields to represent this information.
    # 
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    class custom_field_value_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :custom_field_definition_id
        # @return [uuid] Additional key if source table doesn't have a unique id
        attr_accessor :record_key
        # @return [string] String of data for field
        attr_accessor :string_value
        # @return [double] Number data for field
        attr_accessor :numeric_value
        # @return [date-time] Date created
        attr_accessor :created
        # @return [uuid] Id of user who created this value
        attr_accessor :created_user_id
        # @return [date-time] Date modified
        attr_accessor :modified
        # @return [uuid] Id of user who modified this value
        attr_accessor :modified_user_id
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :app_enrollment_id
        # @return [custom_field_definition_model] Definition of the value
        attr_accessor :custom_field_definition
    )

    # Represents the daily sales outstanding report
    class daily_sales_outstanding_report_model
        # @return [date-time] Timeframe (month) the daily sales outstanding values are associated with
        attr_accessor :timeframe
        # @return [int32] Number of invoices the average daily sales outstanding is calculated on
        attr_accessor :invoice_count
        # @return [double] Time (in days) between an invoice was completed paid off and when the invoice was issued
        attr_accessor :daily_sales_outstanding
    )

    # Model containing information to create a new developer account.
    class developer_account_submit_model
        # @return [string] The name of the developer.
        attr_accessor :name
        # @return [email] The email address of the developer.
        attr_accessor :email
        # @return [string] The company name of the developer.
        attr_accessor :company_name
    )

    # An Email represents a communication sent from one company to another.  The creator of the email is identified
    # by the `CompanyId` field, recipient(s) by the `EmailTo` field, and cc recipient(s) by the 'EmailCC' field.
    # The Email Model represents an email and a number of different metadata attributes related to the creation,
    # storage, and ownership of the email.
    class email_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :email_id
        # @return [uuid] The unique ID number of this email's conversation thread.
        attr_accessor :thread_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The ID number of the company that created this email.
        attr_accessor :company_id
        # @return [string] The email address for the sender of this email.
        attr_accessor :email_from
        # @return [string] The email address for the recipient(s) of this email.
        attr_accessor :email_to
        # @return [string] The email address for the CC recipient(s) of this email
        attr_accessor :email_cc
        # @return [string] The subject line of this email.
        attr_accessor :email_subject
        # @return [string] The body content of this email.
        attr_accessor :email_body
        # @return [date-time] The date on which this email was sent.
        attr_accessor :sent_date
        # @return [boolean] A status flag indicating if this email is unread.
        attr_accessor :is_unread
        # @return [boolean] A status flag indicating if this email is priority status.
        attr_accessor :is_priority
        # @return [boolean] A status flag indicating if this email is marked as spam.
        attr_accessor :is_spam
        # @return [date-time] The date on which this email was created.
        attr_accessor :created
        # @return [uuid] The ID number of the user who created this email.
        attr_accessor :created_user_id
        # @return [boolean] A status flag indicating if this email is to be sent.
        attr_accessor :to_be_sent
        # @return [uuid] The ID number of the customer that sent this email.
        attr_accessor :customer_id
        # @return [date-time] The date on which this email was received.
        attr_accessor :received_time_stamp
        # @return [date-time] The date on which this email was opened.
        attr_accessor :opened_timestamp
        # @return [int32] The number of times this email was viewed.
        attr_accessor :view_count
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :app_enrollment_id
        # @return [string] The id of the email in an external system if imported.
        attr_accessor :external_email_id
        # @return [string] The id of the email thread in an external system if imported.
        attr_accessor :external_thread_id
        # @return [string] The email address(es) for the BCC recipient(s) of this email
        attr_accessor :email_bcc
        # @return [string] The type message being sent (New, Reply, Forward) or null for messages not being sent.
        attr_accessor :send_type
        # @return [date-time] The date on which this email was modified. Email modification should only be done by internal services.
        attr_accessor :modified
        # @return [uuid] The ID of the user who modified this email. Email modification should only be done by internal services.
        attr_accessor :modified_user_id
        # @return [uuid] If the message being sent is a reply or a forward, the id of the the email being replied to or forwarded. Otherwise null.
        attr_accessor :response_origin_id
        # @return [email_model] The email object associated with the response origin id.
        attr_accessor :response_origin
        # @return [note_model] All notes attached to this email. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes
        # @return [attachment_model] All attachments attached to this email. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments
        # @return [custom_field_definition_model] All definitions attached to this email. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_definitions
        # @return [custom_field_value_model] All values attached to this email. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :custom_field_values
    )

    # Represents all the possible data sent as a part of the provisioning post.
    # Only send required fields for the given connector.
    class erp_info_data_model
        # @return [string] The authorization code returned from the first step of the OAuth2 flow https://oauth.net/2/grant-types/authorization-code/
        attr_accessor :auth_code
        # @return [string] The realm id of the account being granted permissions to access
        attr_accessor :realm_id
        # @return [string] The redirect uri used for step one of the OAuth2.0 flow.
        attr_accessor :redirect_uri
    )

    # Represents the ERP object sent in a provisioning request
    class erp_info_model
        # @return [uuid] The id of the ERP's App
        attr_accessor :app_id
        # @return [connector_info_model] The data required to store for connector access
        attr_accessor :data
    )

    # Represents unsupported ERP systems
    class erp_model
        # @return [uuid] Unique ID for this ERP
        attr_accessor :erp_system_id
        # @return [string] Name of ERP
        attr_accessor :name
        # @return [boolean] Flag to indicate if ERP is supported
        attr_accessor :is_supported
    )

    # Model containing information about a user for the invite/onboarding process.
    class invite_data_model
        # @return [string] The email address of the invited user.
        attr_accessor :email
        # @return [string] The status of the user.
        attr_accessor :user_status
    )

    # Model from the User invite process
    class invite_model
        # @return [string] The invited email address
        attr_accessor :email
        # @return [boolean] True if the invite was sent successfully
        attr_accessor :success
        # @return [user_account_model] The invited user, may be null if the user could not be invited
        attr_accessor :invited_user
        # @return [string] The error message if the invite was not successful
        attr_accessor :error_message
    )

    # Model to invite a new user to your accounting group
    class invite_submit_model
        # @return [email] The email address of the user to invite
        attr_accessor :email
    )

    # Represents a single address for an invoice
    class invoice_address_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :invoice_address_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The ID number of the invoice this address belongs to
        attr_accessor :invoice_id
        # @return [string] The first line of the address.
        attr_accessor :line1
        # @return [string] The second line of the address.
        attr_accessor :line2
        # @return [string] The third line of the address.
        attr_accessor :line3
        # @return [string] The name of the city for this address.
        attr_accessor :city
        # @return [string] The state or region part of this address.
        attr_accessor :region
        # @return [string] The postal code for this address.
        attr_accessor :postal_code
        # @return [string] The country for this address.
        attr_accessor :country
        # @return [float] The latitude of this address, if available.
        attr_accessor :latitude
        # @return [float] The longitude of this address, if available.
        attr_accessor :longitude
        # @return [date-time] The date on which this address record was created.
        attr_accessor :created
        # @return [uuid] The ID number of the user who created this address.
        attr_accessor :created_user_id
        # @return [date-time] The date on which this address record was last modified.
        attr_accessor :modified
        # @return [uuid] The ID number of the user who most recently modified this address.
        attr_accessor :modified_user_id
    )

    # An Invoice represents a bill sent from one company to another.  The Lockstep Platform tracks changes to
    # each Invoice so that you can observe the changes over time.  You can view the InvoiceHistory list to
    # monitor and observe the changes of this Invoice and track the dates when changes occurred.
    class invoice_history_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The unique ID number of this invoice history entry.
        attr_accessor :invoice_history_id
        # @return [uuid] The unique ID of the Invoice represented by this history entry. This ID was automatically assigned by Lockstep to the Invoice record when it was added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :invoice_id
        # @return [uuid] The ID number of the company that created this invoice.
        attr_accessor :company_id
        # @return [uuid] The ID number of the counterparty for the invoice, for example, a customer or vendor.
        attr_accessor :customer_id
        # @return [string] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key
        # @return [string] The purchase order code as it exists in the user's ERP or accounting system.
        attr_accessor :purchase_order_code
        # @return [string] An additional reference code that is sometimes used to identify this invoice. The meaning of this field is specific to the ERP or accounting system used by the user.
        attr_accessor :reference_code
        # @return [string] A code identifying the salesperson responsible for writing this invoice.
        attr_accessor :salesperson_code
        # @return [string] A string identifying the salesperson responsible for writing this invoice.
        attr_accessor :salesperson_name
        # @return [string] A code identifying the type of this invoice.
        attr_accessor :invoice_type_code
        # @return [string] A code identifying the status of this invoice.
        attr_accessor :invoice_status_code
        # @return [string] A code identifying the terms given to the purchaser.
        attr_accessor :terms_code
        # @return [string] If the customer negotiated any special terms different from the standard terms above, describe them here.
        attr_accessor :special_terms
        # @return [string] The three-character ISO 4217 currency code used for this invoice. This will be validated by the /api/v1/currencies data set
        attr_accessor :currency_code
        # @return [double] The total value of this invoice, inclusive of all taxes and line items.
        attr_accessor :total_amount
        # @return [double] The total sales (or transactional) tax calculated for this invoice.
        attr_accessor :sales_tax_amount
        # @return [double] The total discounts given by the seller to the buyer on this invoice.
        attr_accessor :discount_amount
        # @return [double] The remaining balance value of this invoice.
        attr_accessor :outstanding_balance_amount
        # @return [date] The reporting date for this invoice.
        attr_accessor :invoice_date
        # @return [date] The date when discounts were adjusted for this invoice.
        attr_accessor :discount_date
        # @return [date] The date when this invoice posted to the company's general ledger.
        attr_accessor :posted_date
        # @return [date] The date when the invoice was closed and finalized after completion of all payments and delivery of all products and services.
        attr_accessor :invoice_closed_date
        # @return [date] The date when the remaining outstanding balance is due.
        attr_accessor :payment_due_date
        # @return [date-time] The date and time when this record was imported from the user's ERP or accounting system.
        attr_accessor :imported_date
        # @return [uuid] The ID number of the invoice's origination address
        attr_accessor :primary_origin_address_id
        # @return [uuid] The ID number of the invoice's bill-to address
        attr_accessor :primary_bill_to_address_id
        # @return [uuid] The ID number of the invoice's ship-to address
        attr_accessor :primary_ship_to_address_id
        # @return [date-time] The date on which this invoice record was created.
        attr_accessor :created
        # @return [uuid] The ID number of the user who created this invoice.
        attr_accessor :created_user_id
        # @return [date-time] The date on which this invoice record was last modified.
        attr_accessor :modified
        # @return [uuid] The ID number of the user who most recently modified this invoice.
        attr_accessor :modified_user_id
    )

    # Represents a line in an invoice
    class invoice_line_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :invoice_line_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The ID number of the invoice this line belongs to.
        attr_accessor :invoice_id
        # @return [string] The unique ID of this record as it was known in its originating financial system, if it was different from the original `LineNumber`. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key
        # @return [string] The line number of this line, as defined in the originating ERP or accounting system. You can sort on this number to get the original view of lines within the invoice.
        attr_accessor :line_number
        # @return [string] A code number identifying the product or service that is specified on this line.
        attr_accessor :product_code
        # @return [string] Description of this invoice line.
        attr_accessor :description
        # @return [string] For lines measured in a unit other than "quantity", this code indicates the measurement system for the quantity field. If the line is measured in quantity, this field is null.
        attr_accessor :unit_measure_code
        # @return [double] The price of a single unit for this line.
        attr_accessor :unit_price
        # @return [double] The quantity of items for ths line.
        attr_accessor :quantity
        # @return [double] The number of items that have been shipped.
        attr_accessor :quantity_shipped
        # @return [double] The number of items that has been received.
        attr_accessor :quantity_received
        # @return [double] The total amount for this line.
        attr_accessor :total_amount
        # @return [string] If this line is tax exempt, this code indicates the reason for the exemption.
        attr_accessor :exemption_code
        # @return [date] If null, the products specified on this line were delivered on the same date as all other lines. If not null, this line was delivered or finalized on a different date than the overall invoice.
        attr_accessor :reporting_date
        # @return [uuid] An optional ID number for the line's origin address.
        attr_accessor :override_origin_address_id
        # @return [uuid] An optional ID number for the line's bill to address.
        attr_accessor :override_bill_to_address_id
        # @return [uuid] An optional ID number for the line's ship to address.
        attr_accessor :override_ship_to_address_id
        # @return [date-time] The date on which this line was created.
        attr_accessor :created
        # @return [uuid] The ID number of the user who created this line.
        attr_accessor :created_user_id
        # @return [date-time] The date on which this line was last modified.
        attr_accessor :modified
        # @return [uuid] The ID number of the user who most recently modified this line.
        attr_accessor :modified_user_id
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :app_enrollment_id
        # @return [note_model] All notes attached to this company. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes
        # @return [attachment_model] All attachments attached to this company. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments
    )

    # An Invoice represents a bill sent from one company to another.  The creator of the invoice is identified
    # by the `CompanyId` field, and the recipient of the invoice is identified by the `CustomerId` field.  Most
    # invoices are uniquely identified both by a Lockstep Platform ID number and a customer ERP "key" that was
    # generated by the system that originated the invoice.  Invoices have a total amount and a due date, and when
    # some payments have been made on the Invoice the `TotalAmount` and the `OutstandingBalanceAmount` may be
    # different.
    class invoice_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :invoice_id
        # @return [uuid] The ID number of the company that created this invoice.
        attr_accessor :company_id
        # @return [uuid] The ID number of the counterparty for the invoice, for example, a customer or vendor.
        attr_accessor :customer_id
        # @return [string] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key
        # @return [string] The purchase order code as it exists in the user's ERP or accounting system.
        attr_accessor :purchase_order_code
        # @return [string] An additional reference code that is sometimes used to identify this invoice. The meaning of this field is specific to the ERP or accounting system used by the user.
        attr_accessor :reference_code
        # @return [string] A code identifying the salesperson responsible for writing this quote, invoice, or order.
        attr_accessor :salesperson_code
        # @return [string] A string identifying the salesperson responsible for writing this quote, invoice, or order.
        attr_accessor :salesperson_name
        # @return [string] A code identifying the type of this invoice.
        attr_accessor :invoice_type_code
        # @return [string] A code identifying the status of this invoice.
        attr_accessor :invoice_status_code
        # @return [string] A code identifying the terms given to the purchaser.
        attr_accessor :terms_code
        # @return [string] If the customer negotiated any special terms different from the standard terms above, describe them here.
        attr_accessor :special_terms
        # @return [string] The three-character ISO 4217 currency code used for this invoice.
        attr_accessor :currency_code
        # @return [double] The total value of this invoice, inclusive of all taxes and line items.
        attr_accessor :total_amount
        # @return [double] The total sales (or transactional) tax calculated for this invoice.
        attr_accessor :sales_tax_amount
        # @return [double] The total discounts given by the seller to the buyer on this invoice.
        attr_accessor :discount_amount
        # @return [double] The remaining balance value of this invoice.
        attr_accessor :outstanding_balance_amount
        # @return [date] The reporting date for this invoice.
        attr_accessor :invoice_date
        # @return [date] The date when discounts were adjusted for this invoice.
        attr_accessor :discount_date
        # @return [date] The date when this invoice posted to the company's general ledger.
        attr_accessor :posted_date
        # @return [date] The date when the invoice was closed and finalized after completion of all payments and delivery of all products and services.
        attr_accessor :invoice_closed_date
        # @return [date] The date when the remaining outstanding balance is due.
        attr_accessor :payment_due_date
        # @return [date-time] The date and time when this record was imported from the user's ERP or accounting system.
        attr_accessor :imported_date
        # @return [uuid] The ID number of the invoice's origination address
        attr_accessor :primary_origin_address_id
        # @return [uuid] The ID number of the invoice's bill-to address
        attr_accessor :primary_bill_to_address_id
        # @return [uuid] The ID number of the invoice's ship-to address
        attr_accessor :primary_ship_to_address_id
        # @return [date-time] The date on which this address record was created.
        attr_accessor :created
        # @return [uuid] The ID number of the user who created this address.
        attr_accessor :created_user_id
        # @return [date-time] The date on which this address record was last modified.
        attr_accessor :modified
        # @return [uuid] The ID number of the user who most recently modified this address.
        attr_accessor :modified_user_id
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :app_enrollment_id
        # @return [boolean] Is the invoice voided?
        attr_accessor :is_voided
        # @return [boolean] Is the invoice in dispute?
        attr_accessor :in_dispute
        # @return [boolean] Should the invoice be excluded from aging calculations?
        attr_accessor :exclude_from_aging
        # @return [invoice_address_model] All addresses connected to this invoice. To retrieve this collection, specify `Addresses` in the "Include" parameter for your query.
        attr_accessor :addresses
        # @return [invoice_line_model] All lines attached to this invoice. To retrieve this collection, specify `Lines` in the "Include" parameter for your query.
        attr_accessor :lines
        # @return [invoice_payment_detail_model] All payments attached to this invoice, the amount of the payment applied to this Invoice, and the date the Payment was applied. To retrieve this collection, specify `Payments` in the "Include" parameter for your query.
        attr_accessor :payments
        # @return [note_model] All notes attached to this invoice. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes
        # @return [attachment_model] All attachments attached to this invoice. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments
        # @return [company_model] The Company associated to this invoice. To retrieve this item, specify `Company` in the "Include" parameter for your query.
        attr_accessor :company
        # @return [company_model] The Customer associated to the invoice customer To retrieve this item, specify `Customer` in the "Include" parameter for your query.
        attr_accessor :customer
        # @return [contact_model] The Contact associated to the invoice customer To retrieve this item, specify `Customer` in the "Include" parameter for your query.
        attr_accessor :customer_primary_contact
        # @return [credit_memo_invoice_model] The credit memos associated to this invoice. To retrieve this item, specify `CreditMemos` in the "Include" parameter for your query.
        attr_accessor :credit_memos
        # @return [custom_field_value_model] All custom field values associated with this invoice To retrieve this item, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_values
        # @return [custom_field_definition_model] All custom field definitions
        attr_accessor :custom_field_definitions
    )

    # View to return Payment Detail information for a given Invoice record.
    class invoice_payment_detail_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The unique identifier of this PaymentApplied record.
        attr_accessor :payment_applied_id
        # @return [uuid] The database id of the invoice
        attr_accessor :invoice_id
        # @return [uuid] The database id of the Payment.
        attr_accessor :payment_id
        # @return [date] Date Payment applied to Invoice.
        attr_accessor :apply_to_invoice_date
        # @return [double] Amount applied to Invoice.
        attr_accessor :payment_applied_amount
        # @return [string] An additional reference code that is sometimes used to identify this Payment. The meaning of this field is specific to the ERP or accounting system used by the user.
        attr_accessor :reference_code
        # @return [uuid] The ID number of the Company (CompanyType = "Customer") that created this Payment.
        attr_accessor :company_id
        # @return [double] The total value of this Payment.
        attr_accessor :payment_amount
        # @return [double] The remaining balance value of this Payment.
        attr_accessor :unapplied_amount
    )

    # Contains summarized data for an invoice
    class invoice_summary_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The ID number of the counterparty for the invoice, for example, a customer or vendor.
        attr_accessor :customer_id
        # @return [uuid] The unique ID number of this invoice.
        attr_accessor :invoice_id
        # @return [string] A reference code that is used to identify this invoice. The meaning of this field is specific to the ERP or accounting system used by the user.
        attr_accessor :invoice_number
        # @return [date] The reporting date for this invoice.
        attr_accessor :invoice_date
        # @return [string] The name of the counterparty for the invoice, for example, a customer or vendor.
        attr_accessor :customer_name
        # @return [string] The status of the invoice.
        attr_accessor :status
        # @return [date] The due date of the invoice.
        attr_accessor :payment_due_date
        # @return [double] The total amount of the Invoice.
        attr_accessor :invoice_amount
        # @return [double] The remaining balance value of this invoice.
        attr_accessor :outstanding_balance
        # @return [string] A code identifying the type of this Invoice.
        attr_accessor :invoice_type_code
        # @return [date] The date stamp for the newest Activity on this Invoice.
        attr_accessor :newest_activity
        # @return [int32] The number of days this Invoice is past due.
        attr_accessor :days_past_due
        # @return [string] The memo text of the payments associated to this invoice.
        attr_accessor :payment_numbers
        # @return [uuid] The ids of the payments associated to this invoice.
        attr_accessor :payment_ids
    )

    # Represents leads for creating new ERP connectors
    class lead_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :lead_id
        # @return [string] Name of lead
        attr_accessor :name
        # @return [string] Name of company of lead
        attr_accessor :company
        # @return [string] Email of lead
        attr_accessor :email
        # @return [string] Requested ERP of lead
        attr_accessor :erp_system
    )

    # A note is a customizable text string that can be attached to various account attributes
    # within Lockstep. You can use notes for internal communication, correspondence with
    # clients, or personal reminders. The Note Model represents a note and a number of
    # different metadata attributes related to the creation, storage, and ownership of the note.
    # 
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    class note_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :note_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [string] The name of the table the note is associated with
        attr_accessor :table_key
        # @return [uuid] The ID of the object the note is associated with
        attr_accessor :object_key
        # @return [string] The text of the note
        attr_accessor :note_text
        # @return [string] The type of the note
        attr_accessor :note_type
        # @return [boolean] Flag indicating if the note has been archived
        attr_accessor :is_archived
        # @return [date-time] The date the note was created
        attr_accessor :created
        # @return [uuid] The ID of the user who created the note
        attr_accessor :created_user_id
        # @return [string] The name of the user who created the note
        attr_accessor :created_user_name
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :app_enrollment_id
        # @return [string] The person to whom this note is intended for.
        attr_accessor :recipient_name
    )

    # A Payment Application is created by a business who receives a Payment from a customer.  A customer may make
    # a single Payment to match an Invoice exactly, a partial Payment for an Invoice, or a single Payment may be
    # made for multiple smaller Invoices.  The Payment Application contains information about which Invoices are connected
    # to which Payments and for which amounts.
    class payment_applied_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :payment_applied_id
        # @return [uuid] The Invoice this payment is applied to.
        attr_accessor :invoice_id
        # @return [uuid] The Payment applied to the invoice.
        attr_accessor :payment_id
        # @return [string] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key
        # @return [int32] Reference number for the payment applied.
        attr_accessor :entry_number
        # @return [date-time] Date payment applied to invoice.
        attr_accessor :apply_to_invoice_date
        # @return [double] Amount applied to invoice.
        attr_accessor :payment_applied_amount
        # @return [date-time] Date payment applied record was created.
        attr_accessor :created
        # @return [uuid] The id of the user who created this applied payment.
        attr_accessor :created_user_id
        # @return [date-time] Date payment applied record was modified.
        attr_accessor :modified
        # @return [uuid] The id of the user who modified this applied payment.
        attr_accessor :modified_user_id
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :app_enrollment_id
        # @return [invoice_model] The invoice associated with this applied payment.
        attr_accessor :invoice
    )

    # Contains group level payment data.
    class payment_detail_header_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [int32] The total number of Customers.
        attr_accessor :customer_count
        # @return [double] The total amount collected.
        attr_accessor :amount_collected
        # @return [double] The total unapplied amount.
        attr_accessor :unapplied_amount
        # @return [int32] The number of paid invoices.
        attr_accessor :paid_invoice_count
        # @return [int32] The number of open invoices.
        attr_accessor :open_invoice_count
    )

    # Contains detailed information about a Payment.
    class payment_detail_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The unique ID of this Payment.
        attr_accessor :payment_id
        # @return [uuid] The ID of the customer to which this Payment belongs.
        attr_accessor :customer_id
        # @return [string] The name of the customer to which this Payment belongs.
        attr_accessor :customer_name
        # @return [string] Memo or reference text (ex. memo field on a check).
        attr_accessor :memo_text
        # @return [string] Reference code for the payment for the given Erp system.
        attr_accessor :reference_code
        # @return [string] The name of the Primary Contact for the Customer.
        attr_accessor :primary_contact
        # @return [string] The Email address of the Customer.
        attr_accessor :email
        # @return [double] Total amount of this Payment.
        attr_accessor :payment_amount
        # @return [double] Unapplied balance of this Payment.
        attr_accessor :unapplied_amount
        # @return [string] The type of payment, Payment or AP Payment.
        attr_accessor :payment_type
        # @return [date] The date of this Payment.
        attr_accessor :payment_date
        # @return [date] Payment post date.
        attr_accessor :post_date
        # @return [string] The phone number of the Customer's Primary Contact.
        attr_accessor :phone
        # @return [string] The fax number of the Customer's Primary Contact.
        attr_accessor :fax
        # @return [string] The first line of the address for the Customer's Primary Contact.
        attr_accessor :address1
        # @return [string] The second line of the address for the Customer's Primary Contact.
        attr_accessor :address2
        # @return [string] The third line of the address for the Customer's Primary Contact.
        attr_accessor :address3
        # @return [string] The city of the address for the Customer's Primary Contact.
        attr_accessor :city
        # @return [string] The state/region of the address for the Customer's Primary Contact.
        attr_accessor :state_region
        # @return [string] The postal/zip code of the address for the Customer's Primary Contact.
        attr_accessor :postal_code
        # @return [string] The 2 character country code of the address for the Customer's Primary Contact.
        attr_accessor :country_code
    )

    # A Payment represents money sent from one company to another.  A single payment may contain payments for
    # one or more invoices; it is also possible for payments to be made in advance of an invoice, for example,
    # as a deposit.  The creator of the Payment is identified by the `CustomerId` field, and the recipient of
    # the Payment is identified by the `CompanyId` field.  Most Payments are uniquely identified both by a
    # Lockstep Platform ID number and a customer ERP "key" that was generated by the system that originated
    # the Payment.  Payments that have not been fully applied have a nonzero `UnappliedAmount` value, which
    # represents a deposit that has been paid and not yet applied to an Invoice.
    class payment_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :payment_id
        # @return [uuid] The ID of the company to which this payment belongs.
        attr_accessor :company_id
        # @return [string] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key
        # @return [string] The type of payment, cash or check.
        attr_accessor :payment_type
        # @return [string] Cash, check, credit card, wire transfer.
        attr_accessor :tender_type
        # @return [boolean] Has the payment been fully applied?
        attr_accessor :is_open
        # @return [string] Memo or reference text (ex. memo field on a check).
        attr_accessor :memo_text
        # @return [date] The date of this payment.
        attr_accessor :payment_date
        # @return [date] Payment post date.
        attr_accessor :post_date
        # @return [double] Total amount of this payment.
        attr_accessor :payment_amount
        # @return [double] Unapplied balance of this payment.
        attr_accessor :unapplied_amount
        # @return [string] Currency of the payment. This will be validated by the /api/v1/currencies data set
        attr_accessor :currency_code
        # @return [string] Reference code for the payment for the given Erp system.
        attr_accessor :reference_code
        # @return [date-time] The date on which this record was created.
        attr_accessor :created
        # @return [uuid] The ID of the user who created this payment.
        attr_accessor :created_user_id
        # @return [date-time] The date on which this record was last modified.
        attr_accessor :modified
        # @return [uuid] The ID of the user who last modified this payment.
        attr_accessor :modified_user_id
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :app_enrollment_id
        # @return [boolean] Is the payment voided?
        attr_accessor :is_voided
        # @return [boolean] Is the payment in dispute?
        attr_accessor :in_dispute
        # @return [payment_applied_model] All applications this payment is associated with. To retrieve this collection, specify `Applications` in the "Include" parameter for your query.
        attr_accessor :applications
        # @return [note_model] All notes attached to this payment. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes
        # @return [attachment_model] All attachments attached to this payment. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments
        # @return [custom_field_definition_model] All definitions attached to this payment. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_definitions
        # @return [custom_field_value_model] All values attached to this payment. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_values
    )

    # Contains summary information for a Payment
    class payment_summary_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The id of the payment
        attr_accessor :payment_id
        # @return [string] Memo or reference text (ex. memo field on a check).
        attr_accessor :memo_text
        # @return [string] Reference code for the payment for the given Erp system.
        attr_accessor :reference_code
        # @return [string] The type of payment, Payment or AP Payment.
        attr_accessor :payment_type
        # @return [date] The date of this payment.
        attr_accessor :payment_date
        # @return [double] Total amount of this payment.
        attr_accessor :payment_amount
        # @return [double] Unapplied balance of this payment.
        attr_accessor :unapplied_amount
        # @return [int32] The number of invoices associated to this payment.
        attr_accessor :invoice_count
        # @return [double] The number of payments applied to this payment.
        attr_accessor :total_payments_applied
        # @return [string] The reference codes of the invoices associated to this payment.
        attr_accessor :invoice_list
        # @return [uuid] The ids of the invoices associated to this payment.
        attr_accessor :invoice_id_list
        # @return [string] The name of the customer for this payment.
        attr_accessor :customer_name
        # @return [uuid] The id of the customer for this payment.
        attr_accessor :customer_id
    )

    # Represents the data to finalize onboarding for a user
    class provisioning_finalize_request_model
        # @return [string] The full name of the user
        attr_accessor :full_name
        # @return [string] The time zone of the user
        attr_accessor :time_zone
        # @return [string] The default currency of the user
        attr_accessor :default_currency
        # @return [company_model] The company information for the user and group
        attr_accessor :company
        # @return [erp_info_model] Optional connector information needed to enroll user to their email connector
        attr_accessor :email_connector
    )

    # Represents the data sent during the onboarding flow
    class provisioning_model
        # @return [string] The full name of the new user
        attr_accessor :full_name
        # @return [string] The time zone of the new user
        attr_accessor :time_zone
        # @return [string] The default currency of the new user
        attr_accessor :default_currency
        # @return [erp_info_model] The information necessary to enroll the user in their ERP
        attr_accessor :erp
        # @return [company_model] The company information for the new user and group
        attr_accessor :company
    )

    # Represents the response to either a successful or failed account provisioning
    class provisioning_response_model
        # @return [string] If provisioning is successful, contains the username of the created user.
        attr_accessor :user_name
        # @return [string] If provisioning is successful, contains subscription account name of created user.
        attr_accessor :account_name
        # @return [uuid] If provisioning is successful, contains the unique identifier of the created user.
        attr_accessor :user_id
        # @return [uuid] If provisioning is successful, contains the group key of the created user.
        attr_accessor :group_key
        # @return [uuid] If provisioning is successful, contains the app enrollment id of the created app enrollment.
        attr_accessor :app_enrollment_id
        # @return [uuid] if provisioning is successful, contains the sync request id of the sync that was started for the app enrollment.
        attr_accessor :sync_request_id
        # @return [string] The error message(s).
        attr_accessor :error_message
    )

    # Represents a risk rate calculation for a single month
    class risk_rate_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [date-time] The month the risk rate was calculated for
        attr_accessor :report_period
        # @return [string] The string name of the month the risk rate was calculated for
        attr_accessor :invoice_month_name
        # @return [int32] The count of all invoices in the calculation month
        attr_accessor :total_invoice_count
        # @return [double] The sum of the total amount for invoices in the calculation month
        attr_accessor :total_invoice_amount
        # @return [int32] The count of open invoices over 90 days from the calculation month
        attr_accessor :at_risk_count
        # @return [double] The sum of the outstanding balance of open invoices over 90 days from the calculation month
        attr_accessor :at_risk_amount
        # @return [double] The percentage of all open invoices for the calculation month that are over 90 days based on count
        attr_accessor :at_risk_count_percentage
        # @return [double] The percentage of all open invoices for the calculation month that are over 90 days based on outstanding balance
        attr_accessor :at_risk_percentage
    )

    # State model for ISO-3166-2
    class state_model
        # @return [string] Name of the state
        attr_accessor :name
        # @return [string] 2 letter alphabetic code for the given state
        attr_accessor :alpha2
        # @return [string] A different name for a state
        attr_accessor :aliases
    )

    # Represents the status of a user's credentials
    class status_model
        # @return [string] If authentication is successful, contains the username of the logged-in user.
        attr_accessor :user_name
        # @return [string] If authentication is successful, contains subscription account name of logged-in user.
        attr_accessor :account_name
        # @return [uuid] If authentication is successful, contains subscription account company id of logged-in user.
        attr_accessor :account_company_id
        # @return [uuid] If authentication is successful, contains the unique identifier of the logged-in user.
        attr_accessor :user_id
        # @return [uuid] If authentication is successful, contains the group key of the logged-in user.
        attr_accessor :group_key
        # @return [boolean] Returns true if authentication for this API was successful.
        attr_accessor :logged_in
        # @return [string] The error message.
        attr_accessor :error_message
        # @return [string] The set of roles for this user.
        attr_accessor :roles
        # @return [date-time] Date and time user has last logged into Azure B2C.
        attr_accessor :last_logged_in
        # @return [uuid] The id of the API key used to authenticate.
        attr_accessor :api_key_id
        # @return [string] If authentication is successful, contains the user status of the logged-in user.
        attr_accessor :user_status
        # @return [string] The environment currently being used
        attr_accessor :environment
        # @return [string] The version currently being used
        attr_accessor :version
        # @return [object] Statuses for the dependencies of this api. OK if the dependency is working.
        attr_accessor :dependencies
    )

    # Contains information about a sync process for an entity.
    class sync_entity_result_model
        # @return [int32] The number of entities inserted
        attr_accessor :insert_count
        # @return [int32] The number of entities updated
        attr_accessor :update_count
        # @return [int32] The number of entities skipped
        attr_accessor :skip_count
        # @return [int32] The number of errors encountered during sync
        attr_accessor :error_count
        # @return [object] The errors encountered during sync keyed by ERP key
        attr_accessor :errors
    )

    # Represents a user request to sync data
    class sync_request_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :sync_request_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [string] Potential values = Cancelled, Ready, In Progress, Success, Failed
        attr_accessor :status_code
        # @return [string] Message containing information about the sync request results
        attr_accessor :process_result_message
        # @return [uuid] App enrollment sync request is for
        attr_accessor :app_enrollment_id
        # @return [date-time] The date this sync request was created
        attr_accessor :created
        # @return [date-time] The date this sync request was last modified
        attr_accessor :modified
        # @return [uuid] The ID number of the user who most recently modified this sync request.
        attr_accessor :modified_user_id
        # @return [object] The detailed results from the sync. To retrieve this collection, set `includeDetails` to true in your GET requests.
        attr_accessor :details
    )

    # Model representing information for a sync request
    class sync_submit_model
        # @return [uuid] The identifier of the app enrollment
        attr_accessor :app_enrollment_id
    )

    # Model from the transfer ownership process.
    class transfer_owner_model
        # @return [user_account_model] The previous owner of the account.
        attr_accessor :previous_owner
        # @return [user_account_model] The new owner of the account.
        attr_accessor :new_owner
    )

    # Model used to submit a transfer ownership request
    class transfer_owner_submit_model
        # @return [uuid] The ID of the user to transfer ownership to.
        attr_accessor :target_user_id
    )

    # A User represents a person who has the ability to authenticate against the Lockstep Platform and use
    # services such as Lockstep Inbox.  A User is uniquely identified by an Azure identity, and each user must
    # have an email address defined within their account.  All Users must validate their email to make use of
    # Lockstep platform services.  Users may have different privileges and access control rights within the
    # Lockstep Platform.
    class user_account_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. This record provides a link to the user's Azure AD B2C OID.
        attr_accessor :user_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [string] The full name of the user
        attr_accessor :user_name
        # @return [email] The email of the user
        attr_accessor :email
        # @return [string] The status of the user's account
        attr_accessor :status
        # @return [date-time] The date that the user account was created
        attr_accessor :created
        # @return [uuid] The ID of the user who created the user account
        attr_accessor :created_user_id
        # @return [date-time] The date the user account was last modified
        attr_accessor :modified
        # @return [uuid] The ID of the user who last modified the user account
        attr_accessor :modified_user_id
        # @return [string] The name of the user who last modified the user account
        attr_accessor :modified_user_name
        # @return [uuid] The ID of the user in Azure B2C
        attr_accessor :b2_cuser_id
        # @return [uuid] The id of the Permission Level for the user.
        attr_accessor :user_role
        # @return [date-time] The date timestamp when the invite was sent to the user.
        attr_accessor :invite_sent
        # @return [string] The phone number of the user.
        attr_accessor :phone_number
        # @return [string] The fax number of the user.
        attr_accessor :fax_number
        # @return [string] The title of the user; free text field
        attr_accessor :title
        # @return [uuid] FK to the CodeDefinition table; CodeType = 'AccountingRole'
        attr_accessor :accounting_role_code_def_id
        # @return [string] Address Line 1 for this User
        attr_accessor :address1
        # @return [string] Address Line 2 for this User
        attr_accessor :address2
        # @return [string] Address Line 3 for this User
        attr_accessor :address3
        # @return [string] City for this User
        attr_accessor :city
        # @return [string] Region ("state" in the US) for this User
        attr_accessor :state_region
        # @return [string] Postal Code this User
        attr_accessor :postal_code
        # @return [string] Country for this User This will be validated by the /api/v1/countries data set
        attr_accessor :country
        # @return [string] Image URL for this User
        attr_accessor :image_url
        # @return [string] Description for this User.
        attr_accessor :description
        # @return [date-time] Last date time user logged into Azure B2C.
        attr_accessor :b2_clast_logged_in
        # @return [string] The default currency code used by this user entity. This value can be overridden for invoices in a different currency code. For a list of defined currency codes, see [Query Currencies](https://developer.lockstep.io/reference/get_api-v1-definitions-currencies) This will be validated by the /api/v1/currencies data set
        attr_accessor :default_currency_code
        # @return [note_model] All notes attached to this User. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes
        # @return [attachment_model] All attachments attached to this User. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments
        # @return [custom_field_value_model] All values attached to this User. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_values
        # @return [code_definition_model] Accounting role definition for this User. To retrieve this collection, specify `AccountingRole` in the "Include" parameter for your query.
        attr_accessor :accounting_role_code_definition
    )

    # Represents a role for a user
    class user_role_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :user_role_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [string] The name of the user role
        attr_accessor :user_role_name
        # @return [date-time] The date that the user role was created
        attr_accessor :created
        # @return [uuid] The ID of the user who created the user role
        attr_accessor :created_user_id
        # @return [date-time] The date the user role was last modified
        attr_accessor :modified
        # @return [uuid] The ID of the user who last modified the user role
        attr_accessor :modified_user_id
    )

end
