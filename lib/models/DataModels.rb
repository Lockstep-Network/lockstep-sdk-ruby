#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @copyright  2021-2021 Lockstep, Inc.
# @version    2021.39
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


module LockstepSdk

    #  An Activity contains information about work being done on a specific accounting task.
    #  You can use Activities to track information about who has been assigned a specific task,
    #  the current status of the task, the name and description given for the particular task,
    #  the priority of the task, and any amounts collected, paid, or credited for the task.
    ActivityModel = Struct.new(
        :activityId             # The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        :groupKey               # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :companyId              # The ID of the company to which this activity belongs.
        :activityTypeCode       # The type code of the activity
        :activityName           # The name of the activity. The name is a short name provided by the person who created the activity that can be displayed in a list.
        :activityDescription    # A description of the activity. This field contains more detailed text about the activity and can be lengthy.
        :activityStatus         # The status of the activity.
        :isOpen                 # True if this activity is currently "open", which indicates that the activitiy is currently in progress.
        :priority               # The priority of the activity.
        :userAssignedTo         # The ID of the user the activity is assigned to.
        :dateAssigned           # The date the activity was assigned.
        :dateClosed             # The date the activity was closed.
        :snoozeUntilDate        # If this activity has been "snoozed", this field will be non-null and will contain the date when the activity will be displayed. Until that date arrives, the activity will remain hidden.
        :created                # The date on which this activity was created.
        :createdUserId          # The ID of the user who created this activity.
        :modified               # The date on which this activity was last modified.
        :modifiedUserId         # The ID of the user who last modified this activity.
        :amountCollected        # Amount collected (if any) for the activity.
        :amountPaid             # Amount paid (if any) for the activity.
        :creditGiven            # Credit given (if any) for the activity.
        :isUnread               # True if this activity is to be shown in an "unread" state. When an activity is read by a person it is assigned to, this flag is set to false.
        :isArchived             # Activities may be archived when they should be hidden from the user. When this flag is true, this activity should be hidden.
        :attachments            # All attachments attached to applied activity. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        :notes                  # All notes attached to this applied activity. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        :customFieldDefinitions # All definitions attached to this applied activity. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        :customFieldValues      # All values attached to this activity. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
    )

    #  Represents an aging record
    AgingModel = Struct.new(
        :bucket             # Aging bucket of outstanding balance data (days past due date of invoice)
        :currencyCode       # Currency code of aging bucket
        :outstandingBalance # Outstanding balance for the given aging bucket
    )

    #  An API Key is an authentication token that you may use with the Lockstep API.  Because API Keys
    #  do not have an expiration date, they are well suited for unattended processes.  Each API Key
    #  is associated with a user, and may be revoked to prevent it from accessing the Lockstep API.
    #  When you create an API Key, make sure to save the value in a secure location.  Lockstep cannot
    #  retrieve an API Key once it is created.
    #  
    #  For more information, see [API Keys](https://developer.lockstep.io/docs/api-keys).
    ApiKeyModel = Struct.new(
        :apiKeyId      # The unique identifier for the API key.
        :groupKey      # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :name          # The name of the API key.
        :apiKey        # The API key to use for authentication. This will only be returned upon creation of the API key. All other times, this value will be `null`. For more information, see [API Keys](https://developer.lockstep.io/docs/api-keys).
        :keyPrefix     # The first 10 characters of the API key. This information can be used to ensure that you are looking at the correct API Key, but cannot be used for authentication.
        :created       # The date the API key was created.
        :createdUserId # The user that created the API key.
        :revoked       # The date the API key was revoked.
        :revokedUserId # The user who revoked the API key.
        :expires       # The UTC datetime when the API key expires.
    )

    #  App enrollment and custom field merged into one
    AppEnrollmentCustomFieldModel = Struct.new(
        :appEnrollmentId         # Unique id for the app enrollment
        :appId                   # Id of enrolled app
        :name                    # The name of the application
        :appType                 # Tag for what type of app the application is
        :groupKey                # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :customFieldDefinitionId # Unique Id for the custom field definition
        :customFieldLabel        # Text to display in-application for custom field
        :dataType                # Data type of the custom field definition
        :sortOrder               # Used for display logic when multiple app enrollment custom fields exist
        :stringValue             # String of data for field
        :numericValue            # Number data for field
    )

    #  An AppEnrollment represents an app that has been enrolled to the current account.  When you sign up for an
    #  app using the Lockstep Platform, you obtain an enrollment record for that app.  Example types of apps include
    #  connectors and feature enhancement apps. The App Enrollment object contains information about this app, its
    #  configuration, and settings.
    #  
    #  See [Applications and Enrollments](https://developer.lockstep.io/docs/applications-and-enrollments) for more information.
    AppEnrollmentModel = Struct.new(
        :appEnrollmentId        # The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        :appId                  # The ID number of the Application that this enrollment represents. You can fetch information about this Application object by specifying `App` in the "Include" parameter for your request.
        :groupKey               # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :isActive               # Determines whether the app enrollment is in use
        :created                # Created date
        :createdUserId          # Created user ID
        :modified               # Last modified date
        :modifiedUserId         # Last user ID to modify
        :cronSettings           # Stores schedule information for the application enrollment see https://en.wikipedia.org/wiki/Cron
        :syncScheduleIsActive   # Flag indicating if the Sync process should be ran on the specified schedule
        :app                    # The Application to which this AppEnrollment belongs. Contains general name, description, logo, and other metadata about this application. To retrieve this object, specify `App` in the "Include" parameter for your query.
        :customFieldDefinitions # All definitions attached to this app. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        :customFieldValues      # All values attached to this app. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        :lastSync               # Data about the last sync attached to this app enrollment To retrieve this collection, specify `LastSync` in the "Include" parameter for your query.
        :erpInfo                # Use `ConnectorInfo` instead.
        :connectorInfo          # Optional data necessary to create an app enrollment for a supported connector. Only enter relevant fields for the given connector.
    )

    #  An Application represents a feature available to customers within the Lockstep Platform.  You can create
    #  Applications by working with your Lockstep business development manager and publish them on the platform
    #  so that customers can browse and find your Application on the Lockstep Platform Marketplace.  When a
    #  customer adds an Application to their account, they obtain an AppEnrollment which represents that customer's
    #  instance of this Application.  The customer-specific AppEnrollment contains a customer's configuration data
    #  for the Application, which is not customer-specific.
    #  
    #  See [Applications and Enrollments](https://developer.lockstep.io/docs/applications-and-enrollments) for more information.
    #  --swaggerCategory:Platform
    ApplicationModel = Struct.new(
        :appId                  # A unique code identifying this application
        :name                   # The name of this application
        :description            # Brief summary of this application shown as a subtitle
        :appType                # Tag for what type of app this is
        :ownerId                # The ID of the owner
        :projectUrl             # The URL to visit for more information about this application
        :iconUrl                # The URL for the icon for this application
        :priceTerms             # The description of the price for this application
        :createdUserId          # The ID of the user who created this application
        :modifiedUserId         # The ID of the user who last modified this application
        :created                # The date this application was created
        :modified               # The date this application was last modified
        :isActive               # Flag indicating if the application is active.
        :wikiURL                # URL to the Wiki for the Application
        :groupKey               # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :notes                  # All notes attached to this app. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        :attachments            # All attachments attached to this app. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        :customFieldDefinitions # All definitions attached to the application. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        :customFieldValues      # All values attached to the application. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
    )

    #  Aggregated Accounts Receivable Aging information.
    ArAgingHeaderInfoModel = Struct.new(
        :groupKey                 # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :reportBucket             # The aging bucket this data belongs to.
        :totalCustomers           # The total number of customers.
        :totalInvoicesOutstanding # The total number of invoices outstanding.
        :totalOutstandingAmount   # The total amount outstanding.
        :totalArAmount            # The total amount for AR.
        :percentageOfTotalAr      # Portion of Total AR this data represents.
    )

    #  Aggregated Accounts Receivable information.
    ArHeaderInfoModel = Struct.new(
        :groupKey                         # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :reportPeriod                     # The date of the report
        :totalCustomers                   # The total number of customers.
        :totalInvoices                    # The total number of invoices.
        :totalInvoicedAmount              # The total amount invoiced.
        :totalUnappliedPayments           # The total number of unapplied payments.
        :totalCollected                   # The total amount of collected payments.
        :totalArAmount                    # The total accounts receivable amount.
        :totalInvoicesPaid                # The number of paid invoices.
        :totalInvoicesPastDue             # The number of past due invoices.
        :totalInvoices90DaysPastDue       # The number of past due invoices for the last 90 days.
        :totalPastDueAmount               # The total amount past due.
        :totalPastDueAmount90Days         # The total past due for the past 90 days.
        :percentageOfTotalAr              # Portion of Total AR that is Past due.
        :dso                              # Daily sales outstanding.
        :totalInvoiceAmountCurrentYear    # The total amount invoiced, due this year.
        :totalInvoiceAmountPreviousYear   # The total amount invoiced, due last year.
        :totalPaymentAmountCurrentYear    # The total of all payments received this year.
        :totalCollectedPastThirtyDays     # The total amount of payments received in the last 30 days
        :totalInvoicesPaidPastThirtyDays  # The total amount of Invoices paid in the last 30 days
        :percentageOfTotalAr90DaysPastDue # Portion of Total AR that is 90+ days Past due.
    )

    #  Contains summarized data for an invoice
    AtRiskInvoiceSummaryModel = Struct.new(
        :reportDate         # The date of the report
        :groupKey           # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :customerId         # The ID number of the counterparty for the invoice, for example, a customer or vendor.
        :invoiceId          # The unique ID number of this invoice.
        :invoiceNumber      # A reference code that is used to identify this invoice. The meaning of this field is specific to the ERP or accounting system used by the user.
        :invoiceDate        # The reporting date for this invoice.
        :customerName       # The name of the counterparty for the invoice, for example, a customer or vendor.
        :status             # The status of the invoice.
        :paymentDueDate     # The due date of the invoice.
        :invoiceAmount      # The total amount of the Invoice.
        :outstandingBalance # The remaining balance value of this invoice.
        :invoiceTypeCode    # A code identifying the type of this Invoice.
        :newestActivity     # The date stamp for the newest Activity on this Invoice.
        :daysPastDue        # The number of days this Invoice is past due.
        :paymentNumbers     # The memo text of the payments associated to this invoice.
        :paymentIds         # The ids of the payments associated to this invoice.
    )

    #  Aggregated Attachment status information.
    AttachmentHeaderInfoModel = Struct.new(
        :groupKey         # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :companyId        # The CompanyId associated with the attachment status report. Providing a null value will return an attachment summary for all attachments associated to the provided GroupKey
        :totalAttachments # The total number of attachments associated with the provided GroupKey and CompanyId.
        :totalArchived    # The total number of archived attachments associated with the provided GroupKey and CompanyId.
        :totalActive      # The total number of active attachments associated with the provided GroupKey and CompanyId.
    )

    #  Represents a user uploaded attachment
    AttachmentModel = Struct.new(
        :attachmentId       # The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        :groupKey           # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :tableKey           # The name of the table the attachment is associated with
        :objectKey          # The ID of the object the attachment is associated with
        :fileName           # Name of the file
        :fileExt            # Extension type of the file
        :attachmentTypeId   # Corresponding AttachmentType object to describe this attachment
        :isArchived         # Flag indicating the attachment was archived
        :originAttachmentId # 
        :viewInternal       # Flag for if LS clients can see this file
        :viewExternal       # Flag for if Vendors and customers can see this file
        :created            # The date the attachment was created
        :createdUserId      # Id of the user who made the file
    )

    #  Data counts for the GroupKey.
    AvailableGroup = Struct.new(
        :groupKey            # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :invoiceCount        # The number of invoices.
        :lineCount           # The number of invoice lines.
        :companyCount        # The number of companies.
        :contactCount        # The number of contacts.
        :paymentCount        # The number of payments.
        :paymentAppliedCount # The number of payments applied.
    )

    #  Represents a list of available migrations
    AvailableMigrationsModel = Struct.new(
        :migrations # Indicates which records are available for migration
    )

    #  Input format used for bulk conversion route
    BulkCurrencyConversionModel = Struct.new(
        :date           # The date for the currency rate
        :sourceCurrency # The currency code This will be validated by the /api/v1/currencies data set
    )

    #  Represents the cashflow report based on a timeframe
    CashflowReportModel = Struct.new(
        :timeframe              # Timeframe in days the cashflow report is generated on
        :paymentsCollected      # Amount of payments collected based in the timeframe
        :paymentsCollectedCount # Number of payments collected based in the timeframe
        :invoicesBilled         # Amount of invoices billed based in the timeframe
        :invoicesBilledCount    # Number of invoices billed in the timeframe
    )

    #  Represents a Code Definition.  Codes can be used as shortened, human readable strings.
    #  Additionally, this table can be used to store lists of system values for Lockstep objects.
    CodeDefinitionModel = Struct.new(
        :codeDefinitionId # The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        :groupKey         # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :codeType         # The type of the Code Definition
        :code             # The Code to be defined.
        :codeDescription  # The definition of the Code
        :created          # The date that the Code Definition was created
        :createdUserId    # The ID of the user who created the Code Definition
        :modified         # The date the Code Definition was last modified
        :modifiedUserId   # The ID of the user who last modified the Code Definition
    )

    #  A Company represents a customer, a vendor, or a company within the organization of the account holder.
    #  Companies can have parents and children, representing an organizational hierarchy of corporate entities.
    #  You can use Companies to track projects and financial data under this Company label.
    #  
    #  See [Vendors, Customers, and Companies](https://developer.lockstep.io/docs/companies-customers-and-vendors) for more information.
    CompanyModel = Struct.new(
        :companyId                           # The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        :companyName                         # The short name of the company.
        :erpKey                              # The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        :companyType                         # This field indicates the type of company. It can be one of a limited number of values: Company, Customer, Group, or Vendor. A company that represents both a customer and a vendor is identified as a CustomerVendor. * `Company` - This record represents a company that is part of the organization of the account holder. * `Customer` - This record represents a business entity that purchases things from the account holder. * `Group` - Only one record of type `GROUP` exists in each account. Contains your account profile. * `Vendor` - This record represents a business entity that sells things to the account holder. * `CustomerVendor` - Both a customer and a vendor.
        :companyStatus                       # The status of the company. Companies can be either `Active` or `Inactive`. When matched to a Lockstep corporate profile, this value will change to reflect that this record will be kept in sync with that company's identity.
        :parentCompanyId                     # If this business entity is part of an organization, this value is non-null and it is set to the `CompanyId` value of the parent company of this business entity. If this value is null, this business entity is a standalone.
        :enterpriseId                        # For convenience, this field indicates the top-level parent company. This can be used to jump directly to the top parent in complex organizational hierarchies.
        :groupKey                            # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :isActive                            # This flag indicates whether the company is currently active. An inactive company should be hidden from the user interface but will still be available for querying.
        :defaultCurrencyCode                 # The default currency code used by this business entity. This value can be overridden for invoices in a different currency code. For a list of defined currency codes, see [Query Currencies](https://developer.lockstep.io/reference/get_api-v1-definitions-currencies)
        :companyLogoUrl                      # The URL of this company's logo, if known.
        :primaryContactId                    # The Lockstep `ContactId` of the primary contact for this company.
        :address1                            # Address info
        :address2                            # Address info
        :address3                            # Address info
        :corpCity                            # Corporate Address info
        :corpState                           # Corporate Address info
        :corpPostalCode                      # Corporate Address info
        :corpCountry                         # Corporate Address info
        :corpPhone                           # Corporate phone number
        :corpFax                             # Corporate fax number
        :city                                # Address info
        :stateRegion                         # Address info
        :postalCode                          # Address info
        :country                             # Address info
        :phoneNumber                         # Phone number
        :faxNumber                           # Fax number
        :created                             # The date this company was created
        :createdUserId                       # The ID of the user who created this company
        :modified                            # The date this company was last modified
        :modifiedUserId                      # The ID of the user who last modified this company
        :modifiedUserName                    # The name of the user who last modified this company
        :taxId                               # Federal Tax ID
        :dunsNumber                          # Dun & Bradstreet Number
        :apEmailAddress                      # AP (Accounts Payable) Email Address
        :arEmailAddress                      # AR (Accounts Receivable) Email Address
        :domainName                          # For companies that use a custom domain name for their email system, this is the domain name used by this company. If this value is known, new emails that come in from this domain will be connected to this company.
        :companyClassificationCodeDefId      # Identifier for classification of this company.
        :description                         # Description of the company.
        :website                             # Website URL for this company.
        :appEnrollmentId                     # The AppEnrollmentId of the application that imported this company record. For accounts with more than one financial system connected, this field identifies the originating financial system that produced this record.
        :notes                               # All notes attached to this company. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        :attachments                         # All attachments attached to this company. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        :contacts                            # All contacts attached to this company. To retrieve this collection, specify `Contacts` in the "Include" parameter for your query.
        :invoices                            # All invoices attached to this company. To retrieve this collection, specify `Invoices` in the "Include" parameter for your query. For more information on Invoices, see [InvoiceModel](https://developer.lockstep.io/reference/get_api-v1-invoices-id).
        :customFieldDefinitions              # All definitions attached to this company. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        :customFieldValues                   # All values attached to this company. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        :companyClassificationCodeDefinition # Classification code definition for this company. To retrieve this collection, specify `Classification` in the "Include" parameter for your query.
    )

    #  Represents all possible data required to set up an app enrollment for a connector.
    #  Only send required fields for the given connector.
    ConnectorInfoModel = Struct.new(
        :authCode    # The authorization code returned from the first step of the OAuth2 flow https://oauth.net/2/grant-types/authorization-code/
        :realmId     # The realm id of the account being granted permissions to access
        :redirectUri # The redirect uri used for step one of the OAuth2.0 flow.
        :email       # The email an email connection is being created for.
    )

    #  A Contact contains information about a person or role within a Company.
    #  You can use Contacts to track information about who is responsible for a specific project,
    #  who handles invoices, or information about which role at a particular customer or
    #  vendor you should speak with about invoices.
    ContactModel = Struct.new(
        :contactId              # The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        :companyId              # The ID of the company to which this contact belongs.
        :groupKey               # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :erpKey                 # The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        :contactName            # The name of the contact.
        :contactCode            # A friendly human-readable code that describes this Contact.
        :title                  # The title of the contact.
        :roleCode               # The role code for the contact.
        :emailAddress           # The email address of the contact.
        :phone                  # The phone number of the contact.
        :fax                    # The fax number of the contact.
        :address1               # The first line of the address.
        :address2               # The second line of the address.
        :address3               # The third line of the address.
        :city                   # The city of the address.
        :stateRegion            # The state/region of the address.
        :postalCode             # The postal/zip code of the address.
        :countryCode            # The two character country code of the address. This will be validated by the /api/v1/countries data set
        :isActive               # Flag indicating if the contact is active.
        :webpageUrl             # The webpage url of the contact.
        :pictureUrl             # The picture/avatar url of the contact.
        :created                # The date on which this record was created.
        :createdUserId          # The ID of the user who created this contact.
        :modified               # The date on which this record was last modified.
        :modifiedUserId         # The ID of the user who last modified this contact.
        :appEnrollmentId        # AppEnrollmentId for this record; used for mapping purposes.
        :notes                  # All notes attached to this company. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        :attachments            # All attachments attached to this company. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        :customFieldDefinitions # All definitions attached to this contact. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        :customFieldValues      # All values attached to this contact. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
    )

    #  Country model for ISO-3166
    CountryModel = Struct.new(
        :name                   # Name of the country
        :alpha2                 # 2 letter alphabetic code for the given country
        :alpha3                 # 3 letter alphabetic code for the given country
        :countryCode            # Unique 3 digit number for the given country
        :region                 # Region of the country
        :subRegion              # Subregion of the country
        :intermediateRegion     # Intermediate region of the country
        :regionCode             # Numeric code for a region
        :subRegionCode          # Numeric code for a subregion
        :intermediateRegionCode # Numeric code for an intermediate region
        :frenchName             # French name of the country
        :aliases                # A different name for a country
    )

    #  Credit Memos reflect credits granted to a customer for various reasons, such as discounts or refunds.
    #  Credit Memos may be applied to Invoices as Payments. When a Credit Memo is applied as payment to an Invoice,
    #  Lockstep creates a Credit Memo Application record to track the amount from the Credit Memo that was applied
    #  as payment to the Invoice. You can examine Credit Memo Application records to track which Invoices were paid
    #  using this Credit.
    CreditMemoAppliedModel = Struct.new(
        :creditMemoAppliedId     # The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        :groupKey                # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :invoiceId               # The id of the invoice
        :creditMemoInvoiceId     # The id of the credit memo invoice
        :erpKey                  # The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        :entryNumber             # Reference number for the applied credit memo.
        :applyToInvoiceDate      # Date payment applied to credit memo.
        :creditMemoAppliedAmount # Amount applied to credit memo.
        :created                 # Date credit memo applied record was created.
        :createdUserId           # The id of the user who created this applied credit memo.
        :modified                # Date credit memo applied record was modified.
        :modifiedUserId          # The id of the user who modified this applied credit memo.
        :appEnrollmentId         # AppEnrollmentId for this record; used for mapping purposes.
        :attachments             # All attachments attached to applied Credit Memo. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        :notes                   # All notes attached to this applied Credit Memo. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        :customFieldDefinitions  # All definitions attached to this applied Credit Memo. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        :customFieldValues       # All values attached to this Credit Memo. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
    )

    #  Contains information about a credit memo invoice
    CreditMemoInvoiceModel = Struct.new(
        :groupKey                 # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :creditMemoAppliedId      # The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        :invoiceId                # The id of the invoice
        :creditMemoInvoiceId      # The id of the credit memo invoice
        :applyToInvoiceDate       # Date invoice applied to credit memo.
        :creditMemoAppliedAmount  # Amount applied to credit memo.
        :referenceCode            # An additional reference code that is sometimes used to identify this invoice. The meaning of this field is specific to the ERP or accounting system used by the user.
        :companyId                # The ID number of the company that created this invoice.
        :customerId               # The ID number of the counterparty for the invoice, for example, a customer or vendor.
        :invoiceStatusCode        # A code identifying the status of this invoice.
        :totalAmount              # The total value of this invoice, inclusive of all taxes and line items.
        :outstandingBalanceAmount # The remaining balance value of this invoice.
    )

    #  Represents an ISO-4217 currency code definition
    CurrencyModel = Struct.new(
        :alphaCode    # Alphabetic code for the given currency
        :numericCode  # Numeric code for the given currency
        :currencyName # Name of currency
        :minorUnit    # Number of places after the decimal for this currency
        :symbol       # Symbol for the given currency
    )

    #  Represents a currency rate for specific currencies and date
    CurrencyRateModel = Struct.new(
        :sourceCurrency      # The source currency
        :destinationCurrency # The destination currency
        :date                # The date for the currency rate
        :currencyRate        # The currency rate value
    )

    #  Contains customer details data
    CustomerDetailsModel = Struct.new(
        :groupKey            # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :customerId          # The unique ID of this customer
        :name                # The unique ID of this customer
        :address1            # Customer address info
        :address2            # Customer address info
        :address3            # Customer address info
        :city                # Customer address info
        :state               # Customer address info
        :postalCode          # Customer address info
        :country             # Customer address country
        :phoneNumber         # Customer phone number
        :faxNumber           # Customer fax number
        :email               # Customer AR email address
        :contactId           # Customer primary contact id
        :contactName         # Customer primary contact name
        :contactEmail        # Customer primary contact email address
        :outstandingInvoices # Customer number of outstanding invoices
        :outstandingAmount   # Customer total outstanding invoice amount
        :amountPastDue       # Customer total past due amount
        :payments            # Customer payments collected
    )

    #  Customer payment collected information
    CustomerDetailsPaymentModel = Struct.new(
        :groupKey             # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :paymentId            # Unique identifier for payment
        :paymentAppliedId     # Unique identifier for payment applied
        :paymentType          # Payment type
        :invoiceId            # Unique identifier for invoice payment is associated with
        :invoiceTypeCode      # Invoice type payment is associated with
        :invoiceReferenceCode # Invoice reference code payment is associated with
        :invoiceTotalAmount   # Invoice total amount payment is associated with
        :paymentDate          # Date payment placed
        :paymentAmount        # Amount payment was made for
    )

    #  Contains summarized data for a customer
    CustomerSummaryModel = Struct.new(
        :groupKey             # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :companyId            # The unique ID of this company.
        :companyName          # The name of the company.
        :primaryContact       # The name of the primary contact.
        :outstandingInvoices  # The number of outstanding invoices for this customer.
        :totalInvoicesOpen    # The number of open invoices.
        :totalInvoicesPastDue # The number of past due invoices.
        :closedInvoices       # The number of closed invoices for this customer.
        :amountCollected      # The total from collected payments.
        :outstandingAmount    # The total balance of outstanding invoices.
        :amountPastDue        # The total amount past due for this customer.
        :unappliedPayments    # The total value of unapplied Payments for this Customer.
        :percentOfTotalAr     # Portion of Total AR for this Customer that is Past due. (TotalPastDue / Total AR).
        :dso                  # Daily sales outstanding value for this Customer.
        :newestActivity       # The date stamp for the newest Activity on this Customer.
    )

    #  A Custom Field represents metadata added to an object within the Lockstep Platform.  Lockstep provides a
    #  core definition for each object.  The core definition is intended to represent a level of compatibility
    #  that provides support across most accounting systems and products.  When a user or developer requires
    #  information beyond this core definition, you can use Custom Fields to represent this information.
    #  
    #  See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    CustomFieldDefinitionModel = Struct.new(
        :groupKey                # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :customFieldDefinitionId # The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        :tableKey                # Table to which this definition belongs
        :appId                   # Id of app this definition belongs to
        :customFieldLabel        # Text to display in-application for custom field
        :dataType                # Data type of this definition
        :sortOrder               # Used for display logic when multiple custom fields exist
        :created                 # Date created
        :createdUserId           # Id of user who created this definition
        :modified                # Date modified
        :modifiedUserId          # Id of user who modified this definition
        :appEnrollmentId         # AppEnrollmentId for this record; used for mapping purposes.
    )

    #  A Custom Field represents metadata added to an object within the Lockstep Platform.  Lockstep provides a
    #  core definition for each object.  The core definition is intended to represent a level of compatibility
    #  that provides support across most accounting systems and products.  When a user or developer requires
    #  information beyond this core definition, you can use Custom Fields to represent this information.
    #  
    #  See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    CustomFieldValueModel = Struct.new(
        :groupKey                # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :customFieldDefinitionId # The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        :recordKey               # Additional key if source table doesn't have a unique id
        :stringValue             # String of data for field
        :numericValue            # Number data for field
        :created                 # Date created
        :createdUserId           # Id of user who created this value
        :modified                # Date modified
        :modifiedUserId          # Id of user who modified this value
        :appEnrollmentId         # AppEnrollmentId for this record; used for mapping purposes.
        :customFieldDefinition   # Definition of the value
    )

    #  Represents the daily sales outstanding report
    DailySalesOutstandingReportModel = Struct.new(
        :timeframe             # Timeframe (month) the daily sales outstanding values are associated with
        :invoiceCount          # Number of invoices the average daily sales outstanding is calculated on
        :dailySalesOutstanding # Time (in days) between an invoice was completed paid off and when the invoice was issued
    )

    #  An Email represents a communication sent from one company to another.  The creator of the email is identified
    #  by the `CompanyId` field, recipient(s) by the `EmailTo` field, and cc recipient(s) by the 'EmailCC' field.
    #  The Email Model represents an email and a number of different metadata attributes related to the creation,
    #  storage, and ownership of the email.
    EmailModel = Struct.new(
        :emailId                # The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        :threadId               # The unique ID number of this email's conversation thread.
        :groupKey               # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :companyId              # The ID number of the company that created this email.
        :emailFrom              # The email address for the sender of this email.
        :emailTo                # The email address for the recipient(s) of this email.
        :emailCC                # The email address for the CC recipient(s) of this email
        :emailSubject           # The subject line of this email.
        :emailBody              # The body content of this email.
        :sentDate               # The date on which this email was sent.
        :isUnread               # A status flag indicating if this email is unread.
        :isPriority             # A status flag indicating if this email is priority status.
        :isSpam                 # A status flag indicating if this email is marked as spam.
        :created                # The date on which this email was created.
        :createdUserId          # The ID number of the user who created this email.
        :toBeSent               # A status flag indicating if this email is to be sent.
        :customerId             # The ID number of the customer that sent this email.
        :receivedTimeStamp      # The date on which this email was received.
        :openedTimestamp        # The date on which this email was opened.
        :viewCount              # The number of times this email was viewed.
        :appEnrollmentId        # AppEnrollmentId for this record; used for mapping purposes.
        :externalEmailId        # The id of the email in an external system if imported.
        :externalThreadId       # The id of the email thread in an external system if imported.
        :emailBcc               # The email address(es) for the BCC recipient(s) of this email
        :notes                  # All notes attached to this email. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        :attachments            # All attachments attached to this email. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        :customFieldDefinitions # All definitions attached to this email. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        :customFieldValues      # All values attached to this email. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
    )

    #  Represents all the possible data sent as a part of the provisioning post.
    #  Only send required fields for the given connector.
    ErpInfoDataModel = Struct.new(
        :authCode    # The authorization code returned from the first step of the OAuth2 flow https://oauth.net/2/grant-types/authorization-code/
        :realmId     # The realm id of the account being granted permissions to access
        :redirectUri # The redirect uri used for step one of the OAuth2.0 flow.
    )

    #  Represents the ERP object sent in a provisioning request
    ErpInfoModel = Struct.new(
        :appId # The id of the ERP's App
        :data  # The data required to store for connector access
    )

    #  Represents unsupported ERP systems
    ErpModel = Struct.new(
        :erpSystemId # Unique ID for this ERP
        :name        # Name of ERP
        :isSupported # Flag to indicate if ERP is supported
    )

    #  Model containing information about a user for the invite/onboarding process.
    InviteDataModel = Struct.new(
        :email      # The email address of the invited user.
        :userStatus # The status of the user.
    )

    #  Model from the User invite process
    InviteModel = Struct.new(
        :email        # The invited email address
        :success      # True if the invite was sent successfully
        :invitedUser  # The invited user, may be null if the user could not be invited
        :errorMessage # The error message if the invite was not successful
    )

    #  Model to invite a new user to your accounting group
    InviteSubmitModel = Struct.new(
        :email # The email address of the user to invite
    )

    #  Represents a single address for an invoice
    InvoiceAddressModel = Struct.new(
        :invoiceAddressId # The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        :groupKey         # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :invoiceId        # The ID number of the invoice this address belongs to
        :line1            # The first line of the address.
        :line2            # The second line of the address.
        :line3            # The third line of the address.
        :city             # The name of the city for this address.
        :region           # The state or region part of this address.
        :postalCode       # The postal code for this address.
        :country          # The country for this address.
        :latitude         # The latitude of this address, if available.
        :longitude        # The longitude of this address, if available.
        :created          # The date on which this address record was created.
        :createdUserId    # The ID number of the user who created this address.
        :modified         # The date on which this address record was last modified.
        :modifiedUserId   # The ID number of the user who most recently modified this address.
    )

    #  An Invoice represents a bill sent from one company to another.  The Lockstep Platform tracks changes to
    #  each Invoice so that you can observe the changes over time.  You can view the InvoiceHistory list to
    #  monitor and observe the changes of this Invoice and track the dates when changes occurred.
    InvoiceHistoryModel = Struct.new(
        :groupKey                 # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :invoiceHistoryId         # The unique ID number of this invoice history entry.
        :invoiceId                # The unique ID of the Invoice represented by this history entry. This ID was automatically assigned by Lockstep to the Invoice record when it was added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        :companyId                # The ID number of the company that created this invoice.
        :customerId               # The ID number of the counterparty for the invoice, for example, a customer or vendor.
        :erpKey                   # The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        :purchaseOrderCode        # The purchase order code as it exists in the user's ERP or accounting system.
        :referenceCode            # An additional reference code that is sometimes used to identify this invoice. The meaning of this field is specific to the ERP or accounting system used by the user.
        :salespersonCode          # A code identifying the salesperson responsible for writing this invoice.
        :salespersonName          # A string identifying the salesperson responsible for writing this invoice.
        :invoiceTypeCode          # A code identifying the type of this invoice.
        :invoiceStatusCode        # A code identifying the status of this invoice.
        :termsCode                # A code identifying the terms given to the purchaser.
        :specialTerms             # If the customer negotiated any special terms different from the standard terms above, describe them here.
        :currencyCode             # The three-character ISO 4217 currency code used for this invoice. This will be validated by the /api/v1/currencies data set
        :totalAmount              # The total value of this invoice, inclusive of all taxes and line items.
        :salesTaxAmount           # The total sales (or transactional) tax calculated for this invoice.
        :discountAmount           # The total discounts given by the seller to the buyer on this invoice.
        :outstandingBalanceAmount # The remaining balance value of this invoice.
        :invoiceDate              # The reporting date for this invoice.
        :discountDate             # The date when discounts were adjusted for this invoice.
        :postedDate               # The date when this invoice posted to the company's general ledger.
        :invoiceClosedDate        # The date when the invoice was closed and finalized after completion of all payments and delivery of all products and services.
        :paymentDueDate           # The date when the remaining outstanding balance is due.
        :importedDate             # The date and time when this record was imported from the user's ERP or accounting system.
        :primaryOriginAddressId   # The ID number of the invoice's origination address
        :primaryBillToAddressId   # The ID number of the invoice's bill-to address
        :primaryShipToAddressId   # The ID number of the invoice's ship-to address
        :created                  # The date on which this invoice record was created.
        :createdUserId            # The ID number of the user who created this invoice.
        :modified                 # The date on which this invoice record was last modified.
        :modifiedUserId           # The ID number of the user who most recently modified this invoice.
    )

    #  Represents a line in an invoice
    InvoiceLineModel = Struct.new(
        :invoiceLineId           # The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        :groupKey                # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :invoiceId               # The ID number of the invoice this line belongs to.
        :erpKey                  # The unique ID of this record as it was known in its originating financial system, if it was different from the original `LineNumber`. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        :lineNumber              # The line number of this line, as defined in the originating ERP or accounting system. You can sort on this number to get the original view of lines within the invoice.
        :productCode             # A code number identifying the product or service that is specified on this line.
        :description             # Description of this invoice line.
        :unitMeasureCode         # For lines measured in a unit other than "quantity", this code indicates the measurement system for the quantity field. If the line is measured in quantity, this field is null.
        :unitPrice               # The price of a single unit for this line.
        :quantity                # The quantity of items for ths line.
        :quantityShipped         # The number of items that have been shipped.
        :quantityReceived        # The number of items that has been received.
        :totalAmount             # The total amount for this line.
        :exemptionCode           # If this line is tax exempt, this code indicates the reason for the exemption.
        :reportingDate           # If null, the products specified on this line were delivered on the same date as all other lines. If not null, this line was delivered or finalized on a different date than the overall invoice.
        :overrideOriginAddressId # An optional ID number for the line's origin address.
        :overrideBillToAddressId # An optional ID number for the line's bill to address.
        :overrideShipToAddressId # An optional ID number for the line's ship to address.
        :created                 # The date on which this line was created.
        :createdUserId           # The ID number of the user who created this line.
        :modified                # The date on which this line was last modified.
        :modifiedUserId          # The ID number of the user who most recently modified this line.
        :notes                   # All notes attached to this company. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        :attachments             # All attachments attached to this company. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
    )

    #  An Invoice represents a bill sent from one company to another.  The creator of the invoice is identified
    #  by the `CompanyId` field, and the recipient of the invoice is identified by the `CustomerId` field.  Most
    #  invoices are uniquely identified both by a Lockstep Platform ID number and a customer ERP "key" that was
    #  generated by the system that originated the invoice.  Invoices have a total amount and a due date, and when
    #  some payments have been made on the Invoice the `TotalAmount` and the `OutstandingBalanceAmount` may be
    #  different.
    InvoiceModel = Struct.new(
        :groupKey                 # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :invoiceId                # The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        :companyId                # The ID number of the company that created this invoice.
        :customerId               # The ID number of the counterparty for the invoice, for example, a customer or vendor.
        :erpKey                   # The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        :purchaseOrderCode        # The purchase order code as it exists in the user's ERP or accounting system.
        :referenceCode            # An additional reference code that is sometimes used to identify this invoice. The meaning of this field is specific to the ERP or accounting system used by the user.
        :salespersonCode          # A code identifying the salesperson responsible for writing this quote, invoice, or order.
        :salespersonName          # A string identifying the salesperson responsible for writing this quote, invoice, or order.
        :invoiceTypeCode          # A code identifying the type of this invoice.
        :invoiceStatusCode        # A code identifying the status of this invoice.
        :termsCode                # A code identifying the terms given to the purchaser.
        :specialTerms             # If the customer negotiated any special terms different from the standard terms above, describe them here.
        :currencyCode             # The three-character ISO 4217 currency code used for this invoice.
        :totalAmount              # The total value of this invoice, inclusive of all taxes and line items.
        :salesTaxAmount           # The total sales (or transactional) tax calculated for this invoice.
        :discountAmount           # The total discounts given by the seller to the buyer on this invoice.
        :outstandingBalanceAmount # The remaining balance value of this invoice.
        :invoiceDate              # The reporting date for this invoice.
        :discountDate             # The date when discounts were adjusted for this invoice.
        :postedDate               # The date when this invoice posted to the company's general ledger.
        :invoiceClosedDate        # The date when the invoice was closed and finalized after completion of all payments and delivery of all products and services.
        :paymentDueDate           # The date when the remaining outstanding balance is due.
        :importedDate             # The date and time when this record was imported from the user's ERP or accounting system.
        :primaryOriginAddressId   # The ID number of the invoice's origination address
        :primaryBillToAddressId   # The ID number of the invoice's bill-to address
        :primaryShipToAddressId   # The ID number of the invoice's ship-to address
        :created                  # The date on which this address record was created.
        :createdUserId            # The ID number of the user who created this address.
        :modified                 # The date on which this address record was last modified.
        :modifiedUserId           # The ID number of the user who most recently modified this address.
        :appEnrollmentId          # AppEnrollmentId for this record; used for mapping purposes.
        :isVoided                 # Is the invoice voided?
        :inDispute                # Is the invoice in dispute?
        :excludeFromAging         # Should the invoice be excluded from aging calculations?
        :addresses                # All addresses connected to this invoice. To retrieve this collection, specify `Addresses` in the "Include" parameter for your query.
        :lines                    # All lines attached to this invoice. To retrieve this collection, specify `Lines` in the "Include" parameter for your query.
        :payments                 # All payments attached to this invoice, the amount of the payment applied to this Invoice, and the date the Payment was applied. To retrieve this collection, specify `Payments` in the "Include" parameter for your query.
        :notes                    # All notes attached to this invoice. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        :attachments              # All attachments attached to this invoice. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        :company                  # The Company associated to this invoice. To retrieve this item, specify `Company` in the "Include" parameter for your query.
        :customer                 # The Customer associated to the invoice customer To retrieve this item, specify `Customer` in the "Include" parameter for your query.
        :customerPrimaryContact   # The Contact associated to the invoice customer To retrieve this item, specify `Customer` in the "Include" parameter for your query.
        :creditMemos              # The credit memos associated to this invoice. To retrieve this item, specify `CreditMemos` in the "Include" parameter for your query.
        :customFieldValues        # All custom field values associated with this invoice To retrieve this item, specify `CustomFieldValues` in the "Include" parameter for your query.
        :customFieldDefinitions   # All custom field definitions
    )

    #  View to return Payment Detail information for a given Invoice record.
    InvoicePaymentDetailModel = Struct.new(
        :groupKey             # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :paymentAppliedId     # The unique identifier of this PaymentApplied record.
        :invoiceId            # The database id of the invoice
        :paymentId            # The database id of the Payment.
        :applyToInvoiceDate   # Date Payment applied to Invoice.
        :paymentAppliedAmount # Amount applied to Invoice.
        :referenceCode        # An additional reference code that is sometimes used to identify this Payment. The meaning of this field is specific to the ERP or accounting system used by the user.
        :companyId            # The ID number of the Company (CompanyType = "Customer") that created this Payment.
        :paymentAmount        # The total value of this Payment.
        :unappliedAmount      # The remaining balance value of this Payment.
    )

    #  Contains summarized data for an invoice
    InvoiceSummaryModel = Struct.new(
        :groupKey           # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :customerId         # The ID number of the counterparty for the invoice, for example, a customer or vendor.
        :invoiceId          # The unique ID number of this invoice.
        :invoiceNumber      # A reference code that is used to identify this invoice. The meaning of this field is specific to the ERP or accounting system used by the user.
        :invoiceDate        # The reporting date for this invoice.
        :customerName       # The name of the counterparty for the invoice, for example, a customer or vendor.
        :status             # The status of the invoice.
        :paymentDueDate     # The due date of the invoice.
        :invoiceAmount      # The total amount of the Invoice.
        :outstandingBalance # The remaining balance value of this invoice.
        :invoiceTypeCode    # A code identifying the type of this Invoice.
        :newestActivity     # The date stamp for the newest Activity on this Invoice.
        :daysPastDue        # The number of days this Invoice is past due.
        :paymentNumbers     # The memo text of the payments associated to this invoice.
        :paymentIds         # The ids of the payments associated to this invoice.
    )

    #  Represents leads for creating new ERP connectors
    LeadModel = Struct.new(
        :leadId    # The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        :name      # Name of lead
        :company   # Name of company of lead
        :email     # Email of lead
        :erpSystem # Requested ERP of lead
    )

    #  Information about the migration action for a particular group
    MigrationResultModel = Struct.new(
        :messages            # If the API call produced messages, this element will contain a list of user-visible text strings that contain information about what work occurred in the API.
        :groupKey            # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :invoiceCount        # The number of invoices migrated
        :addressCount        # The number of addresses migrated
        :invoiceFieldCount   # The number of invoice and invoice line fields migrated
        :lineCount           # The number of invoice lines migrated
        :contactCount        # The number of contacts migrated
        :companyCount        # The number of companies migrated
        :paymentCount        # The number of payments migrated
        :paymentFieldCount   # The number of payment fields migrated
        :paymentAppliedCount # The number of payments applied migrated
    )

    #  A note is a customizable text string that can be attached to various account attributes
    #  within Lockstep. You can use notes for internal communication, correspondence with
    #  clients, or personal reminders. The Note Model represents a note and a number of
    #  different metadata attributes related to the creation, storage, and ownership of the note.
    #  
    #  See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    NoteModel = Struct.new(
        :noteId          # The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        :groupKey        # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :tableKey        # The name of the table the note is associated with
        :objectKey       # The ID of the object the note is associated with
        :noteText        # The text of the note
        :noteType        # The type of the note
        :isArchived      # Flag indicating if the note has been archived
        :created         # The date the note was created
        :createdUserId   # The ID of the user who created the note
        :createdUserName # The name of the user who created the note
        :appEnrollmentId # AppEnrollmentId for this record; used for mapping purposes.
    )

    #  A Payment Application is created by a business who receives a Payment from a customer.  A customer may make
    #  a single Payment to match an Invoice exactly, a partial Payment for an Invoice, or a single Payment may be
    #  made for multiple smaller Invoices.  The Payment Application contains information about which Invoices are connected
    #  to which Payments and for which amounts.
    PaymentAppliedModel = Struct.new(
        :groupKey             # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :paymentAppliedId     # The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        :invoiceId            # The Invoice this payment is applied to.
        :paymentId            # The Payment applied to the invoice.
        :erpKey               # The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        :entryNumber          # Reference number for the payment applied.
        :applyToInvoiceDate   # Date payment applied to invoice.
        :paymentAppliedAmount # Amount applied to invoice.
        :created              # Date payment applied record was created.
        :createdUserId        # The id of the user who created this applied payment.
        :modified             # Date payment applied record was modified.
        :modifiedUserId       # The id of the user who modified this applied payment.
        :appEnrollmentId      # AppEnrollmentId for this record; used for mapping purposes.
        :invoice              # The invoice associated with this applied payment.
    )

    #  Contains group level payment data.
    PaymentDetailHeaderModel = Struct.new(
        :groupKey         # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :customerCount    # The total number of Customers.
        :amountCollected  # The total amount collected.
        :unappliedAmount  # The total unapplied amount.
        :paidInvoiceCount # The number of paid invoices.
        :openInvoiceCount # The number of open invoices.
    )

    #  Contains detailed information about a Payment.
    PaymentDetailModel = Struct.new(
        :groupKey        # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :paymentId       # The unique ID of this Payment.
        :customerId      # The ID of the customer to which this Payment belongs.
        :customerName    # The name of the customer to which this Payment belongs.
        :memoText        # Memo or reference text (ex. memo field on a check).
        :referenceCode   # Reference code for the payment for the given Erp system.
        :primaryContact  # The name of the Primary Contact for the Customer.
        :email           # The Email address of the Customer.
        :paymentAmount   # Total amount of this Payment.
        :unappliedAmount # Unapplied balance of this Payment.
        :paymentType     # The type of payment, Payment or AP Payment.
        :paymentDate     # The date of this Payment.
        :postDate        # Payment post date.
        :phone           # The phone number of the Customer's Primary Contact.
        :fax             # The fax number of the Customer's Primary Contact.
        :address1        # The first line of the address for the Customer's Primary Contact.
        :address2        # The second line of the address for the Customer's Primary Contact.
        :address3        # The third line of the address for the Customer's Primary Contact.
        :city            # The city of the address for the Customer's Primary Contact.
        :stateRegion     # The state/region of the address for the Customer's Primary Contact.
        :postalCode      # The postal/zip code of the address for the Customer's Primary Contact.
        :countryCode     # The 2 character country code of the address for the Customer's Primary Contact.
    )

    #  A Payment represents money sent from one company to another.  A single payment may contain payments for
    #  one or more invoices; it is also possible for payments to be made in advance of an invoice, for example,
    #  as a deposit.  The creator of the Payment is identified by the `CustomerId` field, and the recipient of
    #  the Payment is identified by the `CompanyId` field.  Most Payments are uniquely identified both by a
    #  Lockstep Platform ID number and a customer ERP "key" that was generated by the system that originated
    #  the Payment.  Payments that have not been fully applied have a nonzero `UnappliedAmount` value, which
    #  represents a deposit that has been paid and not yet applied to an Invoice.
    PaymentModel = Struct.new(
        :groupKey               # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :paymentId              # The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        :companyId              # The ID of the company to which this payment belongs.
        :erpKey                 # The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        :paymentType            # The type of payment, cash or check.
        :tenderType             # Cash, check, credit card, wire transfer.
        :isOpen                 # Has the payment been fully applied?
        :memoText               # Memo or reference text (ex. memo field on a check).
        :paymentDate            # The date of this payment.
        :postDate               # Payment post date.
        :paymentAmount          # Total amount of this payment.
        :unappliedAmount        # Unapplied balance of this payment.
        :currencyCode           # Currency of the payment. This will be validated by the /api/v1/currencies data set
        :referenceCode          # Reference code for the payment for the given Erp system.
        :created                # The date on which this record was created.
        :createdUserId          # The ID of the user who created this payment.
        :modified               # The date on which this record was last modified.
        :modifiedUserId         # The ID of the user who last modified this payment.
        :appEnrollmentId        # AppEnrollmentId for this record; used for mapping purposes.
        :isVoided               # Is the payment voided?
        :inDispute              # Is the payment in dispute?
        :applications           # All applications this payment is associated with. To retrieve this collection, specify `Applications` in the "Include" parameter for your query.
        :notes                  # All notes attached to this payment. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        :attachments            # All attachments attached to this payment. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        :customFieldDefinitions # All definitions attached to this payment. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        :customFieldValues      # All values attached to this payment. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
    )

    #  Contains summary information for a Payment
    PaymentSummaryModel = Struct.new(
        :groupKey             # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :paymentId            # The id of the payment
        :memoText             # Memo or reference text (ex. memo field on a check).
        :referenceCode        # Reference code for the payment for the given Erp system.
        :paymentType          # The type of payment, Payment or AP Payment.
        :paymentDate          # The date of this payment.
        :paymentAmount        # Total amount of this payment.
        :unappliedAmount      # Unapplied balance of this payment.
        :invoiceCount         # The number of invoices associated to this payment.
        :totalPaymentsApplied # The number of payments applied to this payment.
        :invoiceList          # The reference codes of the invoices associated to this payment.
        :invoiceIdList        # The ids of the invoices associated to this payment.
        :customerName         # The name of the customer for this payment.
        :customerId           # The id of the customer for this payment.
    )

    #  Represents the data to finalize onboarding for a user
    ProvisioningFinalizeRequestModel = Struct.new(
        :fullName        # The full name of the user
        :timeZone        # The time zone of the user
        :defaultCurrency # The default currency of the user
        :company         # The company information for the user and group
        :emailConnector  # Optional connector information needed to enroll user to their email connector
    )

    #  Represents the data sent during the onboarding flow
    ProvisioningModel = Struct.new(
        :fullName        # The full name of the new user
        :timeZone        # The time zone of the new user
        :defaultCurrency # The default currency of the new user
        :erp             # The information necessary to enroll the user in their ERP
        :company         # The company information for the new user and group
    )

    #  Represents the response to either a successful or failed account provisioning
    ProvisioningResponseModel = Struct.new(
        :userName        # If provisioning is successful, contains the username of the created user.
        :accountName     # If provisioning is successful, contains subscription account name of created user.
        :userId          # If provisioning is successful, contains the unique identifier of the created user.
        :groupKey        # If provisioning is successful, contains the group key of the created user.
        :appEnrollmentId # If provisioning is successful, contains the app enrollment id of the created app enrollment.
        :syncRequestId   # if provisioning is successful, contains the sync request id of the sync that was started for the app enrollment.
        :errorMessage    # The error message(s).
    )

    #  Represents a risk rate calculation for a single month
    RiskRateModel = Struct.new(
        :groupKey              # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :reportPeriod          # The month the risk rate was calculated for
        :invoiceMonthName      # The string name of the month the risk rate was calculated for
        :totalInvoiceCount     # The count of all invoices in the calculation month
        :totalInvoiceAmount    # The sum of the total amount for invoices in the calculation month
        :atRiskCount           # The count of open invoices over 90 days from the calculation month
        :atRiskAmount          # The sum of the outstanding balance of open invoices over 90 days from the calculation month
        :atRiskCountPercentage # The percentage of all open invoices for the calculation month that are over 90 days based on count
        :atRiskPercentage      # The percentage of all open invoices for the calculation month that are over 90 days based on outstanding balance
    )

    #  State model for ISO-3166-2
    StateModel = Struct.new(
        :name    # Name of the state
        :alpha2  # 2 letter alphabetic code for the given state
        :aliases # A different name for a state
    )

    #  Represents the status of a user's credentials
    StatusModel = Struct.new(
        :userName         # If authentication is successful, contains the username of the logged-in user.
        :accountName      # If authentication is successful, contains subscription account name of logged-in user.
        :accountCompanyId # If authentication is successful, contains subscription account company id of logged-in user.
        :userId           # If authentication is successful, contains the unique identifier of the logged-in user.
        :groupKey         # If authentication is successful, contains the group key of the logged-in user.
        :loggedIn         # Returns true if authentication for this API was successful.
        :errorMessage     # The error message.
        :roles            # The set of roles for this user.
        :lastLoggedIn     # Date and time user has last logged into Azure B2C.
        :apiKeyId         # The id of the API key used to authenticate.
        :userStatus       # If authentication is successful, contains the user status of the logged-in user.
        :dependencies     # Statuses for the dependencies of this api. OK if the dependency is working.
    )

    #  Contains information about a sync process for an entity.
    SyncEntityResultModel = Struct.new(
        :insertCount # The number of entities inserted
        :updateCount # The number of entities updated
        :skipCount   # The number of entities skipped
        :errorCount  # The number of errors encountered during sync
        :errors      # The errors encountered during sync keyed by ERP key
    )

    #  Represents a user request to sync data
    SyncRequestModel = Struct.new(
        :syncRequestId        # The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        :groupKey             # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :statusCode           # Potential values = Cancelled, Ready, In Progress, Success, Failed
        :processResultMessage # Message containing information about the sync request results
        :appEnrollmentId      # App enrollment sync request is for
        :created              # The date this sync request was created
        :modified             # The date this sync request was last modified
        :modifiedUserId       # The ID number of the user who most recently modified this sync request.
        :details              # The detailed results from the sync. To retrieve this collection, set `includeDetails` to true in your GET requests.
    )

    #  Model representing information for a sync request
    SyncSubmitModel = Struct.new(
        :appEnrollmentId # The identifier of the app enrollment
    )

    #  Model from the transfer ownership process.
    TransferOwnerModel = Struct.new(
        :previousOwner # The previous owner of the account.
        :newOwner      # The new owner of the account.
    )

    #  Model used to submit a transfer ownership request
    TransferOwnerSubmitModel = Struct.new(
        :targetUserId # The ID of the user to transfer ownership to.
    )

    #  A User represents a person who has the ability to authenticate against the Lockstep Platform and use
    #  services such as Lockstep Insights.  A User is uniquely identified by an Azure identity, and each user must
    #  have an email address defined within their account.  All Users must validate their email to make use of
    #  Lockstep platform services.  Users may have different privileges and access control rights within the
    #  Lockstep Platform.
    UserAccountModel = Struct.new(
        :userId                       # The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. This record provides a link to the user's Azure AD B2C OID.
        :groupKey                     # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :userName                     # The full name of the user
        :email                        # The email of the user
        :status                       # The status of the user's account
        :created                      # The date that the user account was created
        :createdUserId                # The ID of the user who created the user account
        :modified                     # The date the user account was last modified
        :modifiedUserId               # The ID of the user who last modified the user account
        :modifiedUserName             # The name of the user who last modified the user account
        :b2CUserId                    # The ID of the user in Azure B2C
        :userRole                     # The id of the Permission Level for the user.
        :inviteSent                   # The date timestamp when the invite was sent to the user.
        :phoneNumber                  # The phone number of the user.
        :faxNumber                    # The fax number of the user.
        :title                        # The title of the user; free text field
        :accountingRoleCodeDefId      # FK to the CodeDefinition table; CodeType = 'AccountingRole'
        :address1                     # Address Line 1 for this User
        :address2                     # Address Line 2 for this User
        :address3                     # Address Line 3 for this User
        :city                         # City for this User
        :stateRegion                  # Region ("state" in the US) for this User
        :postalCode                   # Postal Code this User
        :country                      # Country for this User This will be validated by the /api/v1/countries data set
        :imageURL                     # Image URL for this User
        :description                  # Description for this User.
        :b2CLastLoggedIn              # Last date time user logged into Azure B2C.
        :defaultCurrencyCode          # The default currency code used by this user entity. This value can be overridden for invoices in a different currency code. For a list of defined currency codes, see [TODO]()
        :notes                        # All notes attached to this User. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        :attachments                  # All attachments attached to this User. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        :customFieldValues            # All values attached to this User. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        :accountingRoleCodeDefinition # Accounting role definition for this User. To retrieve this collection, specify `AccountingRole` in the "Include" parameter for your query.
    )

    #  Represents a role for a user
    UserRoleModel = Struct.new(
        :userRoleId     # The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        :groupKey       # The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        :userRoleName   # The name of the user role
        :created        # The date that the user role was created
        :createdUserId  # The ID of the user who created the user role
        :modified       # The date the user role was last modified
        :modifiedUserId # The ID of the user who last modified the user role
    )

end
