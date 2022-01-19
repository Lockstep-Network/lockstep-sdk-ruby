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
        attr_accessor :activityId            
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey              
        # @return [uuid] The ID of the company to which this activity belongs.
        attr_accessor :companyId             
        # @return [string] The type code of the activity
        attr_accessor :activityTypeCode      
        # @return [string] The name of the activity. The name is a short name provided by the person who created the activity that can be displayed in a list.
        attr_accessor :activityName          
        # @return [string] A description of the activity. This field contains more detailed text about the activity and can be lengthy.
        attr_accessor :activityDescription   
        # @return [string] The status of the activity.
        attr_accessor :activityStatus        
        # @return [boolean] True if this activity is currently "open", which indicates that the activitiy is currently in progress.
        attr_accessor :isOpen                
        # @return [string] The priority of the activity.
        attr_accessor :priority              
        # @return [uuid] The ID of the user the activity is assigned to.
        attr_accessor :userAssignedTo        
        # @return [date-time] The date the activity was assigned.
        attr_accessor :dateAssigned          
        # @return [date-time] The date the activity was closed.
        attr_accessor :dateClosed            
        # @return [date-time] If this activity has been "snoozed", this field will be non-null and will contain the date when the activity will be displayed. Until that date arrives, the activity will remain hidden.
        attr_accessor :snoozeUntilDate       
        # @return [date-time] The date on which this activity was created.
        attr_accessor :created               
        # @return [uuid] The ID of the user who created this activity.
        attr_accessor :createdUserId         
        # @return [date-time] The date on which this activity was last modified.
        attr_accessor :modified              
        # @return [uuid] The ID of the user who last modified this activity.
        attr_accessor :modifiedUserId        
        # @return [double] Amount collected (if any) for the activity.
        attr_accessor :amountCollected       
        # @return [double] Amount paid (if any) for the activity.
        attr_accessor :amountPaid            
        # @return [double] Credit given (if any) for the activity.
        attr_accessor :creditGiven           
        # @return [boolean] True if this activity is to be shown in an "unread" state. When an activity is read by a person it is assigned to, this flag is set to false.
        attr_accessor :isUnread              
        # @return [boolean] Activities may be archived when they should be hidden from the user. When this flag is true, this activity should be hidden.
        attr_accessor :isArchived            
        # @return [company_model] The company associated with the activity To retrieve this collection, specify `Company` in the "Include" parameter for your query.
        attr_accessor :company               
        # @return [string] The name of the user the activity is assigned to
        attr_accessor :userAssignedToName    
        # @return [attachment_model] All attachments attached to applied activity. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments           
        # @return [note_model] All notes attached to this applied activity. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes                 
        # @return [custom_field_definition_model] All definitions attached to this applied activity. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :customFieldDefinitions
        # @return [custom_field_value_model] All values attached to this activity. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :customFieldValues     
        # @return [activity_xref_model] All references attached to this applied activity. To retrieve this collection, specify `References` in the "Include" parameter for your query.
        attr_accessor :references            
    )

    # Represents an item belonging to the activity stream.
    class activity_stream_item_model
        # @return [uuid] The object key of the activity stream item.
        attr_accessor :objectKey         
        # @return [string] The type code of the activity stream item.
        attr_accessor :activityStreamType
        # @return [string] The text body description for this Activity Stream Item.
        attr_accessor :textValue         
        # @return [date-time] The date on which this activity stream item was created.
        attr_accessor :created           
        # @return [uuid] The ID of the user who created this activity.
        attr_accessor :createdUserId     
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey          
        # @return [string] The sender's email address if activity stream item is an Email.
        attr_accessor :fromEmailAddress  
        # @return [string] The recipient's email address if activity stream item is an Email.
        attr_accessor :toEmailAddress    
        # @return [string] The name of the contact sending the activity otherwise null.
        attr_accessor :fromContactName   
        # @return [string] The name of the contact sending the activity otherwise null.
        attr_accessor :toContactName     
    )

    class activity_xref_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this is added to the Lockstep platform.
        attr_accessor :activityXRefId
        # @return [uuid] The ID of the activity to which this reference belongs.
        attr_accessor :activityId    
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey      
        # @return [string] The name of the table the activity reference is associated with
        attr_accessor :tableKey      
        # @return [string] The ID of the object the activity reference is associated with
        attr_accessor :objectKey     
    )

    # Represents an aging record
    class aging_model
        # @return [int32] Aging bucket of outstanding balance data (days past due date of invoice)
        attr_accessor :bucket            
        # @return [string] Currency code of aging bucket
        attr_accessor :currencyCode      
        # @return [double] Outstanding balance for the given aging bucket
        attr_accessor :outstandingBalance
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
        attr_accessor :apiKeyId     
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey     
        # @return [string] The name of the API key.
        attr_accessor :name         
        # @return [string] The API key to use for authentication. This will only be returned upon creation of the API key. All other times, this value will be `null`. For more information, see [API Keys](https://developer.lockstep.io/docs/api-keys).
        attr_accessor :apiKey       
        # @return [string] The first 10 characters of the API key. This information can be used to ensure that you are looking at the correct API Key, but cannot be used for authentication.
        attr_accessor :keyPrefix    
        # @return [date-time] The date the API key was created.
        attr_accessor :created      
        # @return [uuid] The user that created the API key.
        attr_accessor :createdUserId
        # @return [date-time] The date the API key was revoked.
        attr_accessor :revoked      
        # @return [uuid] The user who revoked the API key.
        attr_accessor :revokedUserId
        # @return [date-time] The UTC datetime when the API key expires.
        attr_accessor :expires      
    )

    # App enrollment and custom field merged into one
    class app_enrollment_custom_field_model
        # @return [uuid] Unique id for the app enrollment
        attr_accessor :appEnrollmentId        
        # @return [uuid] Id of enrolled app
        attr_accessor :appId                  
        # @return [string] The name of the application
        attr_accessor :name                   
        # @return [string] Tag for what type of app the application is
        attr_accessor :appType                
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey               
        # @return [uuid] Unique Id for the custom field definition
        attr_accessor :customFieldDefinitionId
        # @return [string] Text to display in-application for custom field
        attr_accessor :customFieldLabel       
        # @return [string] Data type of the custom field definition
        attr_accessor :dataType               
        # @return [int32] Used for display logic when multiple app enrollment custom fields exist
        attr_accessor :sortOrder              
        # @return [string] String of data for field
        attr_accessor :stringValue            
        # @return [double] Number data for field
        attr_accessor :numericValue           
    )

    # An AppEnrollment represents an app that has been enrolled to the current account.  When you sign up for an
    # app using the Lockstep Platform, you obtain an enrollment record for that app.  Example types of apps include
    # connectors and feature enhancement apps. The App Enrollment object contains information about this app, its
    # configuration, and settings.
    # 
    # See [Applications and Enrollments](https://developer.lockstep.io/docs/applications-and-enrollments) for more information.
    class app_enrollment_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :appEnrollmentId       
        # @return [uuid] The ID number of the Application that this enrollment represents. You can fetch information about this Application object by specifying `App` in the "Include" parameter for your request.
        attr_accessor :appId                 
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey              
        # @return [boolean] Determines whether the app enrollment is in use
        attr_accessor :isActive              
        # @return [date-time] Created date
        attr_accessor :created               
        # @return [uuid] Created user ID
        attr_accessor :createdUserId         
        # @return [date-time] Last modified date
        attr_accessor :modified              
        # @return [uuid] Last user ID to modify
        attr_accessor :modifiedUserId        
        # @return [string] Stores schedule information for the application enrollment see https://en.wikipedia.org/wiki/Cron
        attr_accessor :cronSettings          
        # @return [boolean] Flag indicating if the Sync process should be ran on the specified schedule
        attr_accessor :syncScheduleIsActive  
        # @return [application_model] The Application to which this AppEnrollment belongs. Contains general name, description, logo, and other metadata about this application. To retrieve this object, specify `App` in the "Include" parameter for your query.
        attr_accessor :app                   
        # @return [custom_field_definition_model] All definitions attached to this app. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :customFieldDefinitions
        # @return [custom_field_value_model] All values attached to this app. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :customFieldValues     
        # @return [sync_request_model] Data about the last sync attached to this app enrollment To retrieve this collection, specify `LastSync` in the "Include" parameter for your query.
        attr_accessor :lastSync              
        # @return [sync_request_model] Data about the last successful sync associated with this enrollment
        attr_accessor :lastSuccessfulSync    
        # @return [erp_info_data_model] Use `ConnectorInfo` instead.
        attr_accessor :erpInfo               
        # @return [connector_info_model] Optional data necessary to create an app enrollment for a supported connector. Only enter relevant fields for the given connector.
        attr_accessor :connectorInfo         
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
        attr_accessor :appId                 
        # @return [string] The name of this application
        attr_accessor :name                  
        # @return [string] Brief summary of this application shown as a subtitle
        attr_accessor :description           
        # @return [string] Tag for what type of app this is
        attr_accessor :appType               
        # @return [uuid] The ID of the owner
        attr_accessor :ownerId               
        # @return [uri] The URL to visit for more information about this application
        attr_accessor :projectUrl            
        # @return [uri] The URL for the icon for this application
        attr_accessor :iconUrl               
        # @return [string] The description of the price for this application
        attr_accessor :priceTerms            
        # @return [uuid] The ID of the user who created this application
        attr_accessor :createdUserId         
        # @return [uuid] The ID of the user who last modified this application
        attr_accessor :modifiedUserId        
        # @return [date-time] The date this application was created
        attr_accessor :created               
        # @return [date-time] The date this application was last modified
        attr_accessor :modified              
        # @return [boolean] Flag indicating if the application is active.
        attr_accessor :isActive              
        # @return [uri] URL to the Wiki for the Application
        attr_accessor :wikiURL               
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey              
        # @return [note_model] All notes attached to this app. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes                 
        # @return [attachment_model] All attachments attached to this app. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments           
        # @return [custom_field_definition_model] All definitions attached to the application. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :customFieldDefinitions
        # @return [custom_field_value_model] All values attached to the application. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :customFieldValues     
    )

    # Aggregated Accounts Receivable Aging information.
    class ar_aging_header_info_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey                
        # @return [string] The aging bucket this data belongs to.
        attr_accessor :reportBucket            
        # @return [int32] The total number of customers.
        attr_accessor :totalCustomers          
        # @return [int32] The total number of invoices outstanding.
        attr_accessor :totalInvoicesOutstanding
        # @return [double] The total amount outstanding.
        attr_accessor :totalOutstandingAmount  
        # @return [double] The total amount for AR.
        attr_accessor :totalArAmount           
        # @return [double] Portion of Total AR this data represents.
        attr_accessor :percentageOfTotalAr     
    )

    # Aggregated Accounts Receivable information.
    class ar_header_info_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey                        
        # @return [date] The date of the report
        attr_accessor :reportPeriod                    
        # @return [int32] The total number of customers.
        attr_accessor :totalCustomers                  
        # @return [int32] The total number of invoices.
        attr_accessor :totalInvoices                   
        # @return [double] The total amount invoiced.
        attr_accessor :totalInvoicedAmount             
        # @return [double] The total number of unapplied payments.
        attr_accessor :totalUnappliedPayments          
        # @return [double] The total amount of collected payments.
        attr_accessor :totalCollected                  
        # @return [double] The total accounts receivable amount.
        attr_accessor :totalArAmount                   
        # @return [int32] The number of paid invoices.
        attr_accessor :totalInvoicesPaid               
        # @return [int32] The number of past due invoices.
        attr_accessor :totalInvoicesPastDue            
        # @return [int32] The number of past due invoices for the last 90 days.
        attr_accessor :totalInvoices90DaysPastDue      
        # @return [double] The total amount past due.
        attr_accessor :totalPastDueAmount              
        # @return [double] The total past due for the past 90 days.
        attr_accessor :totalPastDueAmount90Days        
        # @return [double] Portion of Total AR that is Past due.
        attr_accessor :percentageOfTotalAr             
        # @return [double] Daily sales outstanding.
        attr_accessor :dso                             
        # @return [double] The total amount invoiced, due this year.
        attr_accessor :totalInvoiceAmountCurrentYear   
        # @return [double] The total amount invoiced, due last year.
        attr_accessor :totalInvoiceAmountPreviousYear  
        # @return [double] The total of all payments received this year.
        attr_accessor :totalPaymentAmountCurrentYear   
        # @return [int32] The total amount of payments received in the last 30 days
        attr_accessor :totalCollectedPastThirtyDays    
        # @return [int32] The total amount of Invoices paid in the last 30 days
        attr_accessor :totalInvoicesPaidPastThirtyDays 
        # @return [double] Portion of Total AR that is 90+ days Past due.
        attr_accessor :percentageOfTotalAr90DaysPastDue
    )

    # Contains summarized data for an invoice
    class at_risk_invoice_summary_model
        # @return [date] The date of the report
        attr_accessor :reportDate        
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey          
        # @return [uuid] The ID number of the counterparty for the invoice, for example, a customer or vendor.
        attr_accessor :customerId        
        # @return [uuid] The unique ID number of this invoice.
        attr_accessor :invoiceId         
        # @return [string] A reference code that is used to identify this invoice. The meaning of this field is specific to the ERP or accounting system used by the user.
        attr_accessor :invoiceNumber     
        # @return [date] The reporting date for this invoice.
        attr_accessor :invoiceDate       
        # @return [string] The name of the counterparty for the invoice, for example, a customer or vendor.
        attr_accessor :customerName      
        # @return [string] The status of the invoice.
        attr_accessor :status            
        # @return [date] The due date of the invoice.
        attr_accessor :paymentDueDate    
        # @return [double] The total amount of the Invoice.
        attr_accessor :invoiceAmount     
        # @return [double] The remaining balance value of this invoice.
        attr_accessor :outstandingBalance
        # @return [string] A code identifying the type of this Invoice.
        attr_accessor :invoiceTypeCode   
        # @return [date] The date stamp for the newest Activity on this Invoice.
        attr_accessor :newestActivity    
        # @return [int32] The number of days this Invoice is past due.
        attr_accessor :daysPastDue       
        # @return [string] The memo text of the payments associated to this invoice.
        attr_accessor :paymentNumbers    
        # @return [uuid] The ids of the payments associated to this invoice.
        attr_accessor :paymentIds        
    )

    # Aggregated Attachment status information.
    class attachment_header_info_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey        
        # @return [uuid] The CompanyId associated with the attachment status report. Providing a null value will return an attachment summary for all attachments associated to the provided GroupKey
        attr_accessor :companyId       
        # @return [int32] The total number of attachments associated with the provided GroupKey and CompanyId.
        attr_accessor :totalAttachments
        # @return [int32] The total number of archived attachments associated with the provided GroupKey and CompanyId.
        attr_accessor :totalArchived   
        # @return [int32] The total number of active attachments associated with the provided GroupKey and CompanyId.
        attr_accessor :totalActive     
    )

    # Represents a user uploaded attachment
    class attachment_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :attachmentId      
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey          
        # @return [string] The name of the table the attachment is associated with
        attr_accessor :tableKey          
        # @return [uuid] The ID of the object the attachment is associated with
        attr_accessor :objectKey         
        # @return [string] Name of the file
        attr_accessor :fileName          
        # @return [string] Extension type of the file
        attr_accessor :fileExt           
        # @return [uuid] Corresponding AttachmentType object to describe this attachment
        attr_accessor :attachmentTypeId  
        # @return [boolean] Flag indicating the attachment was archived
        attr_accessor :isArchived        
        # @return [uuid] 
        attr_accessor :originAttachmentId
        # @return [boolean] Flag for if LS clients can see this file
        attr_accessor :viewInternal      
        # @return [boolean] Flag for if Vendors and customers can see this file
        attr_accessor :viewExternal      
        # @return [date-time] The date the attachment was created
        attr_accessor :created           
        # @return [uuid] Id of the user who made the file
        attr_accessor :createdUserId     
    )

    # Input format used for bulk conversion route
    class bulk_currency_conversion_model
        # @return [date] The date for the currency rate
        attr_accessor :date          
        # @return [string] The currency code This will be validated by the /api/v1/currencies data set
        attr_accessor :sourceCurrency
    )

    # Represents the cashflow report based on a timeframe
    class cashflow_report_model
        # @return [int32] Timeframe in days the cashflow report is generated on
        attr_accessor :timeframe             
        # @return [double] Amount of payments collected based in the timeframe
        attr_accessor :paymentsCollected     
        # @return [int32] Number of payments collected based in the timeframe
        attr_accessor :paymentsCollectedCount
        # @return [double] Amount of invoices billed based in the timeframe
        attr_accessor :invoicesBilled        
        # @return [int32] Number of invoices billed in the timeframe
        attr_accessor :invoicesBilledCount   
    )

    # Represents a Code Definition.  Codes can be used as shortened, human readable strings.
    # Additionally, this table can be used to store lists of system values for Lockstep objects.
    class code_definition_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :codeDefinitionId
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey        
        # @return [string] The type of the Code Definition
        attr_accessor :codeType        
        # @return [string] The Code to be defined.
        attr_accessor :code            
        # @return [string] The definition of the Code
        attr_accessor :codeDescription 
        # @return [date-time] The date that the Code Definition was created
        attr_accessor :created         
        # @return [uuid] The ID of the user who created the Code Definition
        attr_accessor :createdUserId   
        # @return [date-time] The date the Code Definition was last modified
        attr_accessor :modified        
        # @return [uuid] The ID of the user who last modified the Code Definition
        attr_accessor :modifiedUserId  
    )

    # A Company represents a customer, a vendor, or a company within the organization of the account holder.
    # Companies can have parents and children, representing an organizational hierarchy of corporate entities.
    # You can use Companies to track projects and financial data under this Company label.
    # 
    # See [Vendors, Customers, and Companies](https://developer.lockstep.io/docs/companies-customers-and-vendors) for more information.
    class company_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :companyId                          
        # @return [string] The short name of the company.
        attr_accessor :companyName                        
        # @return [string] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erpKey                             
        # @return [string] This field indicates the type of company. It can be one of a limited number of values: Company, Customer, Group, or Vendor. A company that represents both a customer and a vendor is identified as a CustomerVendor. * `Company` - This record represents a company that is part of the organization of the account holder. * `Customer` - This record represents a business entity that purchases things from the account holder. * `Group` - Only one record of type `GROUP` exists in each account. Contains your account profile. * `Vendor` - This record represents a business entity that sells things to the account holder. * `CustomerVendor` - Both a customer and a vendor.
        attr_accessor :companyType                        
        # @return [string] The status of the company. Companies can be either `Active` or `Inactive`. When matched to a Lockstep corporate profile, this value will change to reflect that this record will be kept in sync with that company's identity.
        attr_accessor :companyStatus                      
        # @return [uuid] If this business entity is part of an organization, this value is non-null and it is set to the `CompanyId` value of the parent company of this business entity. If this value is null, this business entity is a standalone.
        attr_accessor :parentCompanyId                    
        # @return [uuid] For convenience, this field indicates the top-level parent company. This can be used to jump directly to the top parent in complex organizational hierarchies.
        attr_accessor :enterpriseId                       
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey                           
        # @return [boolean] This flag indicates whether the company is currently active. An inactive company should be hidden from the user interface but will still be available for querying.
        attr_accessor :isActive                           
        # @return [string] The default currency code used by this business entity. This value can be overridden for invoices in a different currency code. For a list of defined currency codes, see [Query Currencies](https://developer.lockstep.io/reference/get_api-v1-definitions-currencies)
        attr_accessor :defaultCurrencyCode                
        # @return [string] The URL of this company's logo, if known.
        attr_accessor :companyLogoUrl                     
        # @return [uuid] The Lockstep `ContactId` of the primary contact for this company.
        attr_accessor :primaryContactId                   
        # @return [string] Address info
        attr_accessor :address1                           
        # @return [string] Address info
        attr_accessor :address2                           
        # @return [string] Address info
        attr_accessor :address3                           
        # @return [string] Corporate Address info
        attr_accessor :corpCity                           
        # @return [string] Corporate Address info
        attr_accessor :corpState                          
        # @return [string] Corporate Address info
        attr_accessor :corpPostalCode                     
        # @return [string] Corporate Address info
        attr_accessor :corpCountry                        
        # @return [string] Corporate phone number
        attr_accessor :corpPhone                          
        # @return [string] Corporate fax number
        attr_accessor :corpFax                            
        # @return [string] Address info
        attr_accessor :city                               
        # @return [string] Address info
        attr_accessor :stateRegion                        
        # @return [string] Address info
        attr_accessor :postalCode                         
        # @return [string] Address info
        attr_accessor :country                            
        # @return [string] Phone number
        attr_accessor :phoneNumber                        
        # @return [string] Fax number
        attr_accessor :faxNumber                          
        # @return [date-time] The date this company was created
        attr_accessor :created                            
        # @return [uuid] The ID of the user who created this company
        attr_accessor :createdUserId                      
        # @return [date-time] The date this company was last modified
        attr_accessor :modified                           
        # @return [uuid] The ID of the user who last modified this company
        attr_accessor :modifiedUserId                     
        # @return [string] The name of the user who last modified this company
        attr_accessor :modifiedUserName                   
        # @return [string] Federal Tax ID
        attr_accessor :taxId                              
        # @return [string] Dun & Bradstreet Number
        attr_accessor :dunsNumber                         
        # @return [email] AP (Accounts Payable) Email Address
        attr_accessor :apEmailAddress                     
        # @return [email] AR (Accounts Receivable) Email Address
        attr_accessor :arEmailAddress                     
        # @return [string] For companies that use a custom domain name for their email system, this is the domain name used by this company. If this value is known, new emails that come in from this domain will be connected to this company.
        attr_accessor :domainName                         
        # @return [uuid] Identifier for classification of this company.
        attr_accessor :companyClassificationCodeDefId     
        # @return [string] Description of the company.
        attr_accessor :description                        
        # @return [string] Website URL for this company.
        attr_accessor :website                            
        # @return [uuid] The AppEnrollmentId of the application that imported this company record. For accounts with more than one financial system connected, this field identifies the originating financial system that produced this record.
        attr_accessor :appEnrollmentId                    
        # @return [note_model] All notes attached to this company. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes                              
        # @return [attachment_model] All attachments attached to this company. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments                        
        # @return [contact_model] All contacts attached to this company. To retrieve this collection, specify `Contacts` in the "Include" parameter for your query.
        attr_accessor :contacts                           
        # @return [object] All invoices attached to this company. To retrieve this collection, specify `Invoices` in the "Include" parameter for your query. For more information on Invoices, see [InvoiceModel](https://developer.lockstep.io/reference/get_api-v1-invoices-id).
        attr_accessor :invoices                           
        # @return [custom_field_definition_model] All definitions attached to this company. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :customFieldDefinitions             
        # @return [custom_field_value_model] All values attached to this company. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :customFieldValues                  
        # @return [code_definition_model] Classification code definition for this company. To retrieve this collection, specify `Classification` in the "Include" parameter for your query.
        attr_accessor :companyClassificationCodeDefinition
    )

    # Represents all possible data required to set up an app enrollment for a connector.
    # Only send required fields for the given connector.
    class connector_info_model
        # @return [string] The authorization code returned from the first step of the OAuth2 flow https://oauth.net/2/grant-types/authorization-code/
        attr_accessor :authCode   
        # @return [string] The realm id of the account being granted permissions to access
        attr_accessor :realmId    
        # @return [string] The redirect uri used for step one of the OAuth2.0 flow.
        attr_accessor :redirectUri
        # @return [string] The email an email connection is being created for.
        attr_accessor :email      
    )

    # A Contact contains information about a person or role within a Company.
    # You can use Contacts to track information about who is responsible for a specific project,
    # who handles invoices, or information about which role at a particular customer or
    # vendor you should speak with about invoices.
    class contact_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :contactId             
        # @return [uuid] The ID of the company to which this contact belongs.
        attr_accessor :companyId             
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey              
        # @return [string] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erpKey                
        # @return [string] The name of the contact.
        attr_accessor :contactName           
        # @return [string] A friendly human-readable code that describes this Contact.
        attr_accessor :contactCode           
        # @return [string] The title of the contact.
        attr_accessor :title                 
        # @return [string] The role code for the contact.
        attr_accessor :roleCode              
        # @return [email] The email address of the contact.
        attr_accessor :emailAddress          
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
        attr_accessor :stateRegion           
        # @return [string] The postal/zip code of the address.
        attr_accessor :postalCode            
        # @return [string] The two character country code of the address. This will be validated by the /api/v1/countries data set
        attr_accessor :countryCode           
        # @return [boolean] Flag indicating if the contact is active.
        attr_accessor :isActive              
        # @return [uri] The webpage url of the contact.
        attr_accessor :webpageUrl            
        # @return [uri] The picture/avatar url of the contact.
        attr_accessor :pictureUrl            
        # @return [date-time] The date on which this record was created.
        attr_accessor :created               
        # @return [uuid] The ID of the user who created this contact.
        attr_accessor :createdUserId         
        # @return [date-time] The date on which this record was last modified.
        attr_accessor :modified              
        # @return [uuid] The ID of the user who last modified this contact.
        attr_accessor :modifiedUserId        
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :appEnrollmentId       
        # @return [note_model] All notes attached to this company. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes                 
        # @return [attachment_model] All attachments attached to this company. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments           
        # @return [custom_field_definition_model] All definitions attached to this contact. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :customFieldDefinitions
        # @return [custom_field_value_model] All values attached to this contact. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :customFieldValues     
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
        attr_accessor :countryCode           
        # @return [string] Region of the country
        attr_accessor :region                
        # @return [string] Subregion of the country
        attr_accessor :subRegion             
        # @return [string] Intermediate region of the country
        attr_accessor :intermediateRegion    
        # @return [int32] Numeric code for a region
        attr_accessor :regionCode            
        # @return [int32] Numeric code for a subregion
        attr_accessor :subRegionCode         
        # @return [int32] Numeric code for an intermediate region
        attr_accessor :intermediateRegionCode
        # @return [string] French name of the country
        attr_accessor :frenchName            
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
        attr_accessor :creditMemoAppliedId    
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey               
        # @return [uuid] The id of the invoice
        attr_accessor :invoiceId              
        # @return [uuid] The id of the credit memo invoice
        attr_accessor :creditMemoInvoiceId    
        # @return [string] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erpKey                 
        # @return [int32] Reference number for the applied credit memo.
        attr_accessor :entryNumber            
        # @return [date-time] Date payment applied to credit memo.
        attr_accessor :applyToInvoiceDate     
        # @return [double] Amount applied to credit memo.
        attr_accessor :creditMemoAppliedAmount
        # @return [date-time] Date credit memo applied record was created.
        attr_accessor :created                
        # @return [uuid] The id of the user who created this applied credit memo.
        attr_accessor :createdUserId          
        # @return [date-time] Date credit memo applied record was modified.
        attr_accessor :modified               
        # @return [uuid] The id of the user who modified this applied credit memo.
        attr_accessor :modifiedUserId         
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :appEnrollmentId        
        # @return [attachment_model] All attachments attached to applied Credit Memo. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments            
        # @return [note_model] All notes attached to this applied Credit Memo. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes                  
        # @return [custom_field_definition_model] All definitions attached to this applied Credit Memo. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :customFieldDefinitions 
        # @return [custom_field_value_model] All values attached to this Credit Memo. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :customFieldValues      
    )

    # Contains information about a credit memo invoice
    class credit_memo_invoice_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey                
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :creditMemoAppliedId     
        # @return [uuid] The id of the invoice
        attr_accessor :invoiceId               
        # @return [uuid] The id of the credit memo invoice
        attr_accessor :creditMemoInvoiceId     
        # @return [date] Date invoice applied to credit memo.
        attr_accessor :applyToInvoiceDate      
        # @return [double] Amount applied to credit memo.
        attr_accessor :creditMemoAppliedAmount 
        # @return [string] An additional reference code that is sometimes used to identify this invoice. The meaning of this field is specific to the ERP or accounting system used by the user.
        attr_accessor :referenceCode           
        # @return [uuid] The ID number of the company that created this invoice.
        attr_accessor :companyId               
        # @return [uuid] The ID number of the counterparty for the invoice, for example, a customer or vendor.
        attr_accessor :customerId              
        # @return [string] A code identifying the status of this invoice.
        attr_accessor :invoiceStatusCode       
        # @return [double] The total value of this invoice, inclusive of all taxes and line items.
        attr_accessor :totalAmount             
        # @return [double] The remaining balance value of this invoice.
        attr_accessor :outstandingBalanceAmount
    )

    # Represents an ISO-4217 currency code definition
    class currency_model
        # @return [string] Alphabetic code for the given currency
        attr_accessor :alphaCode   
        # @return [string] Numeric code for the given currency
        attr_accessor :numericCode 
        # @return [string] Name of currency
        attr_accessor :currencyName
        # @return [int32] Number of places after the decimal for this currency
        attr_accessor :minorUnit   
        # @return [string] Symbol for the given currency
        attr_accessor :symbol      
    )

    # Represents a currency rate for specific currencies and date
    class currency_rate_model
        # @return [string] The source currency
        attr_accessor :sourceCurrency     
        # @return [string] The destination currency
        attr_accessor :destinationCurrency
        # @return [date] The date for the currency rate
        attr_accessor :date               
        # @return [double] The currency rate value
        attr_accessor :currencyRate       
    )

    # Contains customer details data
    class customer_details_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey           
        # @return [uuid] The unique ID of this customer
        attr_accessor :customerId         
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
        attr_accessor :postalCode         
        # @return [string] Customer address country
        attr_accessor :country            
        # @return [string] Customer phone number
        attr_accessor :phoneNumber        
        # @return [string] Customer fax number
        attr_accessor :faxNumber          
        # @return [string] Customer AR email address
        attr_accessor :email              
        # @return [uuid] Customer primary contact id
        attr_accessor :contactId          
        # @return [string] Customer primary contact name
        attr_accessor :contactName        
        # @return [string] Customer primary contact email address
        attr_accessor :contactEmail       
        # @return [int32] Customer number of outstanding invoices
        attr_accessor :outstandingInvoices
        # @return [double] Customer total outstanding invoice amount
        attr_accessor :outstandingAmount  
        # @return [double] Customer total past due amount
        attr_accessor :amountPastDue      
        # @return [customer_details_payment_model] Customer payments collected
        attr_accessor :payments           
    )

    # Customer payment collected information
    class customer_details_payment_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey            
        # @return [uuid] Unique identifier for payment
        attr_accessor :paymentId           
        # @return [uuid] Unique identifier for payment applied
        attr_accessor :paymentAppliedId    
        # @return [string] Payment type
        attr_accessor :paymentType         
        # @return [uuid] Unique identifier for invoice payment is associated with
        attr_accessor :invoiceId           
        # @return [string] Invoice type payment is associated with
        attr_accessor :invoiceTypeCode     
        # @return [string] Invoice reference code payment is associated with
        attr_accessor :invoiceReferenceCode
        # @return [double] Invoice total amount payment is associated with
        attr_accessor :invoiceTotalAmount  
        # @return [date-time] Date payment placed
        attr_accessor :paymentDate         
        # @return [double] Amount payment was made for
        attr_accessor :paymentAmount       
    )

    # Contains summarized data for a customer
    class customer_summary_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey            
        # @return [uuid] The unique ID of this company.
        attr_accessor :companyId           
        # @return [string] The name of the company.
        attr_accessor :companyName         
        # @return [string] The name of the primary contact.
        attr_accessor :primaryContact      
        # @return [int32] The number of outstanding invoices for this customer.
        attr_accessor :outstandingInvoices 
        # @return [int32] The number of open invoices.
        attr_accessor :totalInvoicesOpen   
        # @return [int32] The number of past due invoices.
        attr_accessor :totalInvoicesPastDue
        # @return [int32] The number of closed invoices for this customer.
        attr_accessor :closedInvoices      
        # @return [double] The total from collected payments.
        attr_accessor :amountCollected     
        # @return [double] The total balance of outstanding invoices.
        attr_accessor :outstandingAmount   
        # @return [double] The total amount past due for this customer.
        attr_accessor :amountPastDue       
        # @return [double] The total value of unapplied Payments for this Customer.
        attr_accessor :unappliedPayments   
        # @return [double] Portion of Total AR for this Customer that is Past due. (TotalPastDue / Total AR).
        attr_accessor :percentOfTotalAr    
        # @return [double] Daily sales outstanding value for this Customer.
        attr_accessor :dso                 
        # @return [date] The date stamp for the newest Activity on this Customer.
        attr_accessor :newestActivity      
    )

    # A Custom Field represents metadata added to an object within the Lockstep Platform.  Lockstep provides a
    # core definition for each object.  The core definition is intended to represent a level of compatibility
    # that provides support across most accounting systems and products.  When a user or developer requires
    # information beyond this core definition, you can use Custom Fields to represent this information.
    # 
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    class custom_field_definition_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey               
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :customFieldDefinitionId
        # @return [string] Table to which this definition belongs
        attr_accessor :tableKey               
        # @return [uuid] Id of app this definition belongs to
        attr_accessor :appId                  
        # @return [string] Text to display in-application for custom field
        attr_accessor :customFieldLabel       
        # @return [string] Data type of this definition
        attr_accessor :dataType               
        # @return [int32] Used for display logic when multiple custom fields exist
        attr_accessor :sortOrder              
        # @return [date-time] Date created
        attr_accessor :created                
        # @return [uuid] Id of user who created this definition
        attr_accessor :createdUserId          
        # @return [date-time] Date modified
        attr_accessor :modified               
        # @return [uuid] Id of user who modified this definition
        attr_accessor :modifiedUserId         
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :appEnrollmentId        
    )

    # A Custom Field represents metadata added to an object within the Lockstep Platform.  Lockstep provides a
    # core definition for each object.  The core definition is intended to represent a level of compatibility
    # that provides support across most accounting systems and products.  When a user or developer requires
    # information beyond this core definition, you can use Custom Fields to represent this information.
    # 
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    class custom_field_value_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey               
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :customFieldDefinitionId
        # @return [uuid] Additional key if source table doesn't have a unique id
        attr_accessor :recordKey              
        # @return [string] String of data for field
        attr_accessor :stringValue            
        # @return [double] Number data for field
        attr_accessor :numericValue           
        # @return [date-time] Date created
        attr_accessor :created                
        # @return [uuid] Id of user who created this value
        attr_accessor :createdUserId          
        # @return [date-time] Date modified
        attr_accessor :modified               
        # @return [uuid] Id of user who modified this value
        attr_accessor :modifiedUserId         
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :appEnrollmentId        
        # @return [custom_field_definition_model] Definition of the value
        attr_accessor :customFieldDefinition  
    )

    # Represents the daily sales outstanding report
    class daily_sales_outstanding_report_model
        # @return [date-time] Timeframe (month) the daily sales outstanding values are associated with
        attr_accessor :timeframe            
        # @return [int32] Number of invoices the average daily sales outstanding is calculated on
        attr_accessor :invoiceCount         
        # @return [double] Time (in days) between an invoice was completed paid off and when the invoice was issued
        attr_accessor :dailySalesOutstanding
    )

    # Model containing information to create a new developer account.
    class developer_account_submit_model
        # @return [string] The name of the developer.
        attr_accessor :name       
        # @return [email] The email address of the developer.
        attr_accessor :email      
        # @return [string] The company name of the developer.
        attr_accessor :companyName
    )

    # An Email represents a communication sent from one company to another.  The creator of the email is identified
    # by the `CompanyId` field, recipient(s) by the `EmailTo` field, and cc recipient(s) by the 'EmailCC' field.
    # The Email Model represents an email and a number of different metadata attributes related to the creation,
    # storage, and ownership of the email.
    class email_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :emailId               
        # @return [uuid] The unique ID number of this email's conversation thread.
        attr_accessor :threadId              
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey              
        # @return [uuid] The ID number of the company that created this email.
        attr_accessor :companyId             
        # @return [string] The email address for the sender of this email.
        attr_accessor :emailFrom             
        # @return [string] The email address for the recipient(s) of this email.
        attr_accessor :emailTo               
        # @return [string] The email address for the CC recipient(s) of this email
        attr_accessor :emailCC               
        # @return [string] The subject line of this email.
        attr_accessor :emailSubject          
        # @return [string] The body content of this email.
        attr_accessor :emailBody             
        # @return [date-time] The date on which this email was sent.
        attr_accessor :sentDate              
        # @return [boolean] A status flag indicating if this email is unread.
        attr_accessor :isUnread              
        # @return [boolean] A status flag indicating if this email is priority status.
        attr_accessor :isPriority            
        # @return [boolean] A status flag indicating if this email is marked as spam.
        attr_accessor :isSpam                
        # @return [date-time] The date on which this email was created.
        attr_accessor :created               
        # @return [uuid] The ID number of the user who created this email.
        attr_accessor :createdUserId         
        # @return [boolean] A status flag indicating if this email is to be sent.
        attr_accessor :toBeSent              
        # @return [uuid] The ID number of the customer that sent this email.
        attr_accessor :customerId            
        # @return [date-time] The date on which this email was received.
        attr_accessor :receivedTimeStamp     
        # @return [date-time] The date on which this email was opened.
        attr_accessor :openedTimestamp       
        # @return [int32] The number of times this email was viewed.
        attr_accessor :viewCount             
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :appEnrollmentId       
        # @return [string] The id of the email in an external system if imported.
        attr_accessor :externalEmailId       
        # @return [string] The id of the email thread in an external system if imported.
        attr_accessor :externalThreadId      
        # @return [string] The email address(es) for the BCC recipient(s) of this email
        attr_accessor :emailBcc              
        # @return [string] The type message being sent (New, Reply, Forward) or null for messages not being sent.
        attr_accessor :sendType              
        # @return [date-time] The date on which this email was modified. Email modification should only be done by internal services.
        attr_accessor :modified              
        # @return [uuid] The ID of the user who modified this email. Email modification should only be done by internal services.
        attr_accessor :modifiedUserId        
        # @return [uuid] If the message being sent is a reply or a forward, the id of the the email being replied to or forwarded. Otherwise null.
        attr_accessor :responseOriginId      
        # @return [email_model] The email object associated with the response origin id.
        attr_accessor :responseOrigin        
        # @return [note_model] All notes attached to this email. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes                 
        # @return [attachment_model] All attachments attached to this email. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments           
        # @return [custom_field_definition_model] All definitions attached to this email. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :customFieldDefinitions
        # @return [custom_field_value_model] All values attached to this email. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :customFieldValues     
    )

    # Represents all the possible data sent as a part of the provisioning post.
    # Only send required fields for the given connector.
    class erp_info_data_model
        # @return [string] The authorization code returned from the first step of the OAuth2 flow https://oauth.net/2/grant-types/authorization-code/
        attr_accessor :authCode   
        # @return [string] The realm id of the account being granted permissions to access
        attr_accessor :realmId    
        # @return [string] The redirect uri used for step one of the OAuth2.0 flow.
        attr_accessor :redirectUri
    )

    # Represents the ERP object sent in a provisioning request
    class erp_info_model
        # @return [uuid] The id of the ERP's App
        attr_accessor :appId
        # @return [connector_info_model] The data required to store for connector access
        attr_accessor :data 
    )

    # Represents unsupported ERP systems
    class erp_model
        # @return [uuid] Unique ID for this ERP
        attr_accessor :erpSystemId
        # @return [string] Name of ERP
        attr_accessor :name       
        # @return [boolean] Flag to indicate if ERP is supported
        attr_accessor :isSupported
    )

    # Model containing information about a user for the invite/onboarding process.
    class invite_data_model
        # @return [string] The email address of the invited user.
        attr_accessor :email     
        # @return [string] The status of the user.
        attr_accessor :userStatus
    )

    # Model from the User invite process
    class invite_model
        # @return [string] The invited email address
        attr_accessor :email       
        # @return [boolean] True if the invite was sent successfully
        attr_accessor :success     
        # @return [user_account_model] The invited user, may be null if the user could not be invited
        attr_accessor :invitedUser 
        # @return [string] The error message if the invite was not successful
        attr_accessor :errorMessage
    )

    # Model to invite a new user to your accounting group
    class invite_submit_model
        # @return [email] The email address of the user to invite
        attr_accessor :email
    )

    # Represents a single address for an invoice
    class invoice_address_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :invoiceAddressId
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey        
        # @return [uuid] The ID number of the invoice this address belongs to
        attr_accessor :invoiceId       
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
        attr_accessor :postalCode      
        # @return [string] The country for this address.
        attr_accessor :country         
        # @return [float] The latitude of this address, if available.
        attr_accessor :latitude        
        # @return [float] The longitude of this address, if available.
        attr_accessor :longitude       
        # @return [date-time] The date on which this address record was created.
        attr_accessor :created         
        # @return [uuid] The ID number of the user who created this address.
        attr_accessor :createdUserId   
        # @return [date-time] The date on which this address record was last modified.
        attr_accessor :modified        
        # @return [uuid] The ID number of the user who most recently modified this address.
        attr_accessor :modifiedUserId  
    )

    # An Invoice represents a bill sent from one company to another.  The Lockstep Platform tracks changes to
    # each Invoice so that you can observe the changes over time.  You can view the InvoiceHistory list to
    # monitor and observe the changes of this Invoice and track the dates when changes occurred.
    class invoice_history_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey                
        # @return [uuid] The unique ID number of this invoice history entry.
        attr_accessor :invoiceHistoryId        
        # @return [uuid] The unique ID of the Invoice represented by this history entry. This ID was automatically assigned by Lockstep to the Invoice record when it was added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :invoiceId               
        # @return [uuid] The ID number of the company that created this invoice.
        attr_accessor :companyId               
        # @return [uuid] The ID number of the counterparty for the invoice, for example, a customer or vendor.
        attr_accessor :customerId              
        # @return [string] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erpKey                  
        # @return [string] The purchase order code as it exists in the user's ERP or accounting system.
        attr_accessor :purchaseOrderCode       
        # @return [string] An additional reference code that is sometimes used to identify this invoice. The meaning of this field is specific to the ERP or accounting system used by the user.
        attr_accessor :referenceCode           
        # @return [string] A code identifying the salesperson responsible for writing this invoice.
        attr_accessor :salespersonCode         
        # @return [string] A string identifying the salesperson responsible for writing this invoice.
        attr_accessor :salespersonName         
        # @return [string] A code identifying the type of this invoice.
        attr_accessor :invoiceTypeCode         
        # @return [string] A code identifying the status of this invoice.
        attr_accessor :invoiceStatusCode       
        # @return [string] A code identifying the terms given to the purchaser.
        attr_accessor :termsCode               
        # @return [string] If the customer negotiated any special terms different from the standard terms above, describe them here.
        attr_accessor :specialTerms            
        # @return [string] The three-character ISO 4217 currency code used for this invoice. This will be validated by the /api/v1/currencies data set
        attr_accessor :currencyCode            
        # @return [double] The total value of this invoice, inclusive of all taxes and line items.
        attr_accessor :totalAmount             
        # @return [double] The total sales (or transactional) tax calculated for this invoice.
        attr_accessor :salesTaxAmount          
        # @return [double] The total discounts given by the seller to the buyer on this invoice.
        attr_accessor :discountAmount          
        # @return [double] The remaining balance value of this invoice.
        attr_accessor :outstandingBalanceAmount
        # @return [date] The reporting date for this invoice.
        attr_accessor :invoiceDate             
        # @return [date] The date when discounts were adjusted for this invoice.
        attr_accessor :discountDate            
        # @return [date] The date when this invoice posted to the company's general ledger.
        attr_accessor :postedDate              
        # @return [date] The date when the invoice was closed and finalized after completion of all payments and delivery of all products and services.
        attr_accessor :invoiceClosedDate       
        # @return [date] The date when the remaining outstanding balance is due.
        attr_accessor :paymentDueDate          
        # @return [date-time] The date and time when this record was imported from the user's ERP or accounting system.
        attr_accessor :importedDate            
        # @return [uuid] The ID number of the invoice's origination address
        attr_accessor :primaryOriginAddressId  
        # @return [uuid] The ID number of the invoice's bill-to address
        attr_accessor :primaryBillToAddressId  
        # @return [uuid] The ID number of the invoice's ship-to address
        attr_accessor :primaryShipToAddressId  
        # @return [date-time] The date on which this invoice record was created.
        attr_accessor :created                 
        # @return [uuid] The ID number of the user who created this invoice.
        attr_accessor :createdUserId           
        # @return [date-time] The date on which this invoice record was last modified.
        attr_accessor :modified                
        # @return [uuid] The ID number of the user who most recently modified this invoice.
        attr_accessor :modifiedUserId          
    )

    # Represents a line in an invoice
    class invoice_line_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :invoiceLineId          
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey               
        # @return [uuid] The ID number of the invoice this line belongs to.
        attr_accessor :invoiceId              
        # @return [string] The unique ID of this record as it was known in its originating financial system, if it was different from the original `LineNumber`. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erpKey                 
        # @return [string] The line number of this line, as defined in the originating ERP or accounting system. You can sort on this number to get the original view of lines within the invoice.
        attr_accessor :lineNumber             
        # @return [string] A code number identifying the product or service that is specified on this line.
        attr_accessor :productCode            
        # @return [string] Description of this invoice line.
        attr_accessor :description            
        # @return [string] For lines measured in a unit other than "quantity", this code indicates the measurement system for the quantity field. If the line is measured in quantity, this field is null.
        attr_accessor :unitMeasureCode        
        # @return [double] The price of a single unit for this line.
        attr_accessor :unitPrice              
        # @return [double] The quantity of items for ths line.
        attr_accessor :quantity               
        # @return [double] The number of items that have been shipped.
        attr_accessor :quantityShipped        
        # @return [double] The number of items that has been received.
        attr_accessor :quantityReceived       
        # @return [double] The total amount for this line.
        attr_accessor :totalAmount            
        # @return [string] If this line is tax exempt, this code indicates the reason for the exemption.
        attr_accessor :exemptionCode          
        # @return [date] If null, the products specified on this line were delivered on the same date as all other lines. If not null, this line was delivered or finalized on a different date than the overall invoice.
        attr_accessor :reportingDate          
        # @return [uuid] An optional ID number for the line's origin address.
        attr_accessor :overrideOriginAddressId
        # @return [uuid] An optional ID number for the line's bill to address.
        attr_accessor :overrideBillToAddressId
        # @return [uuid] An optional ID number for the line's ship to address.
        attr_accessor :overrideShipToAddressId
        # @return [date-time] The date on which this line was created.
        attr_accessor :created                
        # @return [uuid] The ID number of the user who created this line.
        attr_accessor :createdUserId          
        # @return [date-time] The date on which this line was last modified.
        attr_accessor :modified               
        # @return [uuid] The ID number of the user who most recently modified this line.
        attr_accessor :modifiedUserId         
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :appEnrollmentId        
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
        attr_accessor :groupKey                
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :invoiceId               
        # @return [uuid] The ID number of the company that created this invoice.
        attr_accessor :companyId               
        # @return [uuid] The ID number of the counterparty for the invoice, for example, a customer or vendor.
        attr_accessor :customerId              
        # @return [string] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erpKey                  
        # @return [string] The purchase order code as it exists in the user's ERP or accounting system.
        attr_accessor :purchaseOrderCode       
        # @return [string] An additional reference code that is sometimes used to identify this invoice. The meaning of this field is specific to the ERP or accounting system used by the user.
        attr_accessor :referenceCode           
        # @return [string] A code identifying the salesperson responsible for writing this quote, invoice, or order.
        attr_accessor :salespersonCode         
        # @return [string] A string identifying the salesperson responsible for writing this quote, invoice, or order.
        attr_accessor :salespersonName         
        # @return [string] A code identifying the type of this invoice.
        attr_accessor :invoiceTypeCode         
        # @return [string] A code identifying the status of this invoice.
        attr_accessor :invoiceStatusCode       
        # @return [string] A code identifying the terms given to the purchaser.
        attr_accessor :termsCode               
        # @return [string] If the customer negotiated any special terms different from the standard terms above, describe them here.
        attr_accessor :specialTerms            
        # @return [string] The three-character ISO 4217 currency code used for this invoice.
        attr_accessor :currencyCode            
        # @return [double] The total value of this invoice, inclusive of all taxes and line items.
        attr_accessor :totalAmount             
        # @return [double] The total sales (or transactional) tax calculated for this invoice.
        attr_accessor :salesTaxAmount          
        # @return [double] The total discounts given by the seller to the buyer on this invoice.
        attr_accessor :discountAmount          
        # @return [double] The remaining balance value of this invoice.
        attr_accessor :outstandingBalanceAmount
        # @return [date] The reporting date for this invoice.
        attr_accessor :invoiceDate             
        # @return [date] The date when discounts were adjusted for this invoice.
        attr_accessor :discountDate            
        # @return [date] The date when this invoice posted to the company's general ledger.
        attr_accessor :postedDate              
        # @return [date] The date when the invoice was closed and finalized after completion of all payments and delivery of all products and services.
        attr_accessor :invoiceClosedDate       
        # @return [date] The date when the remaining outstanding balance is due.
        attr_accessor :paymentDueDate          
        # @return [date-time] The date and time when this record was imported from the user's ERP or accounting system.
        attr_accessor :importedDate            
        # @return [uuid] The ID number of the invoice's origination address
        attr_accessor :primaryOriginAddressId  
        # @return [uuid] The ID number of the invoice's bill-to address
        attr_accessor :primaryBillToAddressId  
        # @return [uuid] The ID number of the invoice's ship-to address
        attr_accessor :primaryShipToAddressId  
        # @return [date-time] The date on which this address record was created.
        attr_accessor :created                 
        # @return [uuid] The ID number of the user who created this address.
        attr_accessor :createdUserId           
        # @return [date-time] The date on which this address record was last modified.
        attr_accessor :modified                
        # @return [uuid] The ID number of the user who most recently modified this address.
        attr_accessor :modifiedUserId          
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :appEnrollmentId         
        # @return [boolean] Is the invoice voided?
        attr_accessor :isVoided                
        # @return [boolean] Is the invoice in dispute?
        attr_accessor :inDispute               
        # @return [boolean] Should the invoice be excluded from aging calculations?
        attr_accessor :excludeFromAging        
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
        attr_accessor :customerPrimaryContact  
        # @return [credit_memo_invoice_model] The credit memos associated to this invoice. To retrieve this item, specify `CreditMemos` in the "Include" parameter for your query.
        attr_accessor :creditMemos             
        # @return [custom_field_value_model] All custom field values associated with this invoice To retrieve this item, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :customFieldValues       
        # @return [custom_field_definition_model] All custom field definitions
        attr_accessor :customFieldDefinitions  
    )

    # View to return Payment Detail information for a given Invoice record.
    class invoice_payment_detail_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey            
        # @return [uuid] The unique identifier of this PaymentApplied record.
        attr_accessor :paymentAppliedId    
        # @return [uuid] The database id of the invoice
        attr_accessor :invoiceId           
        # @return [uuid] The database id of the Payment.
        attr_accessor :paymentId           
        # @return [date] Date Payment applied to Invoice.
        attr_accessor :applyToInvoiceDate  
        # @return [double] Amount applied to Invoice.
        attr_accessor :paymentAppliedAmount
        # @return [string] An additional reference code that is sometimes used to identify this Payment. The meaning of this field is specific to the ERP or accounting system used by the user.
        attr_accessor :referenceCode       
        # @return [uuid] The ID number of the Company (CompanyType = "Customer") that created this Payment.
        attr_accessor :companyId           
        # @return [double] The total value of this Payment.
        attr_accessor :paymentAmount       
        # @return [double] The remaining balance value of this Payment.
        attr_accessor :unappliedAmount     
    )

    # Contains summarized data for an invoice
    class invoice_summary_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey          
        # @return [uuid] The ID number of the counterparty for the invoice, for example, a customer or vendor.
        attr_accessor :customerId        
        # @return [uuid] The unique ID number of this invoice.
        attr_accessor :invoiceId         
        # @return [string] A reference code that is used to identify this invoice. The meaning of this field is specific to the ERP or accounting system used by the user.
        attr_accessor :invoiceNumber     
        # @return [date] The reporting date for this invoice.
        attr_accessor :invoiceDate       
        # @return [string] The name of the counterparty for the invoice, for example, a customer or vendor.
        attr_accessor :customerName      
        # @return [string] The status of the invoice.
        attr_accessor :status            
        # @return [date] The due date of the invoice.
        attr_accessor :paymentDueDate    
        # @return [double] The total amount of the Invoice.
        attr_accessor :invoiceAmount     
        # @return [double] The remaining balance value of this invoice.
        attr_accessor :outstandingBalance
        # @return [string] A code identifying the type of this Invoice.
        attr_accessor :invoiceTypeCode   
        # @return [date] The date stamp for the newest Activity on this Invoice.
        attr_accessor :newestActivity    
        # @return [int32] The number of days this Invoice is past due.
        attr_accessor :daysPastDue       
        # @return [string] The memo text of the payments associated to this invoice.
        attr_accessor :paymentNumbers    
        # @return [uuid] The ids of the payments associated to this invoice.
        attr_accessor :paymentIds        
    )

    # Represents leads for creating new ERP connectors
    class lead_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :leadId   
        # @return [string] Name of lead
        attr_accessor :name     
        # @return [string] Name of company of lead
        attr_accessor :company  
        # @return [string] Email of lead
        attr_accessor :email    
        # @return [string] Requested ERP of lead
        attr_accessor :erpSystem
    )

    # A note is a customizable text string that can be attached to various account attributes
    # within Lockstep. You can use notes for internal communication, correspondence with
    # clients, or personal reminders. The Note Model represents a note and a number of
    # different metadata attributes related to the creation, storage, and ownership of the note.
    # 
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    class note_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :noteId         
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey       
        # @return [string] The name of the table the note is associated with
        attr_accessor :tableKey       
        # @return [uuid] The ID of the object the note is associated with
        attr_accessor :objectKey      
        # @return [string] The text of the note
        attr_accessor :noteText       
        # @return [string] The type of the note
        attr_accessor :noteType       
        # @return [boolean] Flag indicating if the note has been archived
        attr_accessor :isArchived     
        # @return [date-time] The date the note was created
        attr_accessor :created        
        # @return [uuid] The ID of the user who created the note
        attr_accessor :createdUserId  
        # @return [string] The name of the user who created the note
        attr_accessor :createdUserName
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :appEnrollmentId
        # @return [string] The person to whom this note is intended for.
        attr_accessor :recipientName  
    )

    # A Payment Application is created by a business who receives a Payment from a customer.  A customer may make
    # a single Payment to match an Invoice exactly, a partial Payment for an Invoice, or a single Payment may be
    # made for multiple smaller Invoices.  The Payment Application contains information about which Invoices are connected
    # to which Payments and for which amounts.
    class payment_applied_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey            
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :paymentAppliedId    
        # @return [uuid] The Invoice this payment is applied to.
        attr_accessor :invoiceId           
        # @return [uuid] The Payment applied to the invoice.
        attr_accessor :paymentId           
        # @return [string] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erpKey              
        # @return [int32] Reference number for the payment applied.
        attr_accessor :entryNumber         
        # @return [date-time] Date payment applied to invoice.
        attr_accessor :applyToInvoiceDate  
        # @return [double] Amount applied to invoice.
        attr_accessor :paymentAppliedAmount
        # @return [date-time] Date payment applied record was created.
        attr_accessor :created             
        # @return [uuid] The id of the user who created this applied payment.
        attr_accessor :createdUserId       
        # @return [date-time] Date payment applied record was modified.
        attr_accessor :modified            
        # @return [uuid] The id of the user who modified this applied payment.
        attr_accessor :modifiedUserId      
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :appEnrollmentId     
        # @return [invoice_model] The invoice associated with this applied payment.
        attr_accessor :invoice             
    )

    # Contains group level payment data.
    class payment_detail_header_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey        
        # @return [int32] The total number of Customers.
        attr_accessor :customerCount   
        # @return [double] The total amount collected.
        attr_accessor :amountCollected 
        # @return [double] The total unapplied amount.
        attr_accessor :unappliedAmount 
        # @return [int32] The number of paid invoices.
        attr_accessor :paidInvoiceCount
        # @return [int32] The number of open invoices.
        attr_accessor :openInvoiceCount
    )

    # Contains detailed information about a Payment.
    class payment_detail_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey       
        # @return [uuid] The unique ID of this Payment.
        attr_accessor :paymentId      
        # @return [uuid] The ID of the customer to which this Payment belongs.
        attr_accessor :customerId     
        # @return [string] The name of the customer to which this Payment belongs.
        attr_accessor :customerName   
        # @return [string] Memo or reference text (ex. memo field on a check).
        attr_accessor :memoText       
        # @return [string] Reference code for the payment for the given Erp system.
        attr_accessor :referenceCode  
        # @return [string] The name of the Primary Contact for the Customer.
        attr_accessor :primaryContact 
        # @return [string] The Email address of the Customer.
        attr_accessor :email          
        # @return [double] Total amount of this Payment.
        attr_accessor :paymentAmount  
        # @return [double] Unapplied balance of this Payment.
        attr_accessor :unappliedAmount
        # @return [string] The type of payment, Payment or AP Payment.
        attr_accessor :paymentType    
        # @return [date] The date of this Payment.
        attr_accessor :paymentDate    
        # @return [date] Payment post date.
        attr_accessor :postDate       
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
        attr_accessor :stateRegion    
        # @return [string] The postal/zip code of the address for the Customer's Primary Contact.
        attr_accessor :postalCode     
        # @return [string] The 2 character country code of the address for the Customer's Primary Contact.
        attr_accessor :countryCode    
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
        attr_accessor :groupKey              
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :paymentId             
        # @return [uuid] The ID of the company to which this payment belongs.
        attr_accessor :companyId             
        # @return [string] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erpKey                
        # @return [string] The type of payment, cash or check.
        attr_accessor :paymentType           
        # @return [string] Cash, check, credit card, wire transfer.
        attr_accessor :tenderType            
        # @return [boolean] Has the payment been fully applied?
        attr_accessor :isOpen                
        # @return [string] Memo or reference text (ex. memo field on a check).
        attr_accessor :memoText              
        # @return [date] The date of this payment.
        attr_accessor :paymentDate           
        # @return [date] Payment post date.
        attr_accessor :postDate              
        # @return [double] Total amount of this payment.
        attr_accessor :paymentAmount         
        # @return [double] Unapplied balance of this payment.
        attr_accessor :unappliedAmount       
        # @return [string] Currency of the payment. This will be validated by the /api/v1/currencies data set
        attr_accessor :currencyCode          
        # @return [string] Reference code for the payment for the given Erp system.
        attr_accessor :referenceCode         
        # @return [date-time] The date on which this record was created.
        attr_accessor :created               
        # @return [uuid] The ID of the user who created this payment.
        attr_accessor :createdUserId         
        # @return [date-time] The date on which this record was last modified.
        attr_accessor :modified              
        # @return [uuid] The ID of the user who last modified this payment.
        attr_accessor :modifiedUserId        
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :appEnrollmentId       
        # @return [boolean] Is the payment voided?
        attr_accessor :isVoided              
        # @return [boolean] Is the payment in dispute?
        attr_accessor :inDispute             
        # @return [payment_applied_model] All applications this payment is associated with. To retrieve this collection, specify `Applications` in the "Include" parameter for your query.
        attr_accessor :applications          
        # @return [note_model] All notes attached to this payment. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes                 
        # @return [attachment_model] All attachments attached to this payment. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments           
        # @return [custom_field_definition_model] All definitions attached to this payment. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :customFieldDefinitions
        # @return [custom_field_value_model] All values attached to this payment. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :customFieldValues     
    )

    # Contains summary information for a Payment
    class payment_summary_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey            
        # @return [uuid] The id of the payment
        attr_accessor :paymentId           
        # @return [string] Memo or reference text (ex. memo field on a check).
        attr_accessor :memoText            
        # @return [string] Reference code for the payment for the given Erp system.
        attr_accessor :referenceCode       
        # @return [string] The type of payment, Payment or AP Payment.
        attr_accessor :paymentType         
        # @return [date] The date of this payment.
        attr_accessor :paymentDate         
        # @return [double] Total amount of this payment.
        attr_accessor :paymentAmount       
        # @return [double] Unapplied balance of this payment.
        attr_accessor :unappliedAmount     
        # @return [int32] The number of invoices associated to this payment.
        attr_accessor :invoiceCount        
        # @return [double] The number of payments applied to this payment.
        attr_accessor :totalPaymentsApplied
        # @return [string] The reference codes of the invoices associated to this payment.
        attr_accessor :invoiceList         
        # @return [uuid] The ids of the invoices associated to this payment.
        attr_accessor :invoiceIdList       
        # @return [string] The name of the customer for this payment.
        attr_accessor :customerName        
        # @return [uuid] The id of the customer for this payment.
        attr_accessor :customerId          
    )

    # Represents the data to finalize onboarding for a user
    class provisioning_finalize_request_model
        # @return [string] The full name of the user
        attr_accessor :fullName       
        # @return [string] The time zone of the user
        attr_accessor :timeZone       
        # @return [string] The default currency of the user
        attr_accessor :defaultCurrency
        # @return [company_model] The company information for the user and group
        attr_accessor :company        
        # @return [erp_info_model] Optional connector information needed to enroll user to their email connector
        attr_accessor :emailConnector 
    )

    # Represents the data sent during the onboarding flow
    class provisioning_model
        # @return [string] The full name of the new user
        attr_accessor :fullName       
        # @return [string] The time zone of the new user
        attr_accessor :timeZone       
        # @return [string] The default currency of the new user
        attr_accessor :defaultCurrency
        # @return [erp_info_model] The information necessary to enroll the user in their ERP
        attr_accessor :erp            
        # @return [company_model] The company information for the new user and group
        attr_accessor :company        
    )

    # Represents the response to either a successful or failed account provisioning
    class provisioning_response_model
        # @return [string] If provisioning is successful, contains the username of the created user.
        attr_accessor :userName       
        # @return [string] If provisioning is successful, contains subscription account name of created user.
        attr_accessor :accountName    
        # @return [uuid] If provisioning is successful, contains the unique identifier of the created user.
        attr_accessor :userId         
        # @return [uuid] If provisioning is successful, contains the group key of the created user.
        attr_accessor :groupKey       
        # @return [uuid] If provisioning is successful, contains the app enrollment id of the created app enrollment.
        attr_accessor :appEnrollmentId
        # @return [uuid] if provisioning is successful, contains the sync request id of the sync that was started for the app enrollment.
        attr_accessor :syncRequestId  
        # @return [string] The error message(s).
        attr_accessor :errorMessage   
    )

    # Represents a risk rate calculation for a single month
    class risk_rate_model
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey             
        # @return [date-time] The month the risk rate was calculated for
        attr_accessor :reportPeriod         
        # @return [string] The string name of the month the risk rate was calculated for
        attr_accessor :invoiceMonthName     
        # @return [int32] The count of all invoices in the calculation month
        attr_accessor :totalInvoiceCount    
        # @return [double] The sum of the total amount for invoices in the calculation month
        attr_accessor :totalInvoiceAmount   
        # @return [int32] The count of open invoices over 90 days from the calculation month
        attr_accessor :atRiskCount          
        # @return [double] The sum of the outstanding balance of open invoices over 90 days from the calculation month
        attr_accessor :atRiskAmount         
        # @return [double] The percentage of all open invoices for the calculation month that are over 90 days based on count
        attr_accessor :atRiskCountPercentage
        # @return [double] The percentage of all open invoices for the calculation month that are over 90 days based on outstanding balance
        attr_accessor :atRiskPercentage     
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
        attr_accessor :userName        
        # @return [string] If authentication is successful, contains subscription account name of logged-in user.
        attr_accessor :accountName     
        # @return [uuid] If authentication is successful, contains subscription account company id of logged-in user.
        attr_accessor :accountCompanyId
        # @return [uuid] If authentication is successful, contains the unique identifier of the logged-in user.
        attr_accessor :userId          
        # @return [uuid] If authentication is successful, contains the group key of the logged-in user.
        attr_accessor :groupKey        
        # @return [boolean] Returns true if authentication for this API was successful.
        attr_accessor :loggedIn        
        # @return [string] The error message.
        attr_accessor :errorMessage    
        # @return [string] The set of roles for this user.
        attr_accessor :roles           
        # @return [date-time] Date and time user has last logged into Azure B2C.
        attr_accessor :lastLoggedIn    
        # @return [uuid] The id of the API key used to authenticate.
        attr_accessor :apiKeyId        
        # @return [string] If authentication is successful, contains the user status of the logged-in user.
        attr_accessor :userStatus      
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
        attr_accessor :insertCount
        # @return [int32] The number of entities updated
        attr_accessor :updateCount
        # @return [int32] The number of entities skipped
        attr_accessor :skipCount  
        # @return [int32] The number of errors encountered during sync
        attr_accessor :errorCount 
        # @return [object] The errors encountered during sync keyed by ERP key
        attr_accessor :errors     
    )

    # Represents a user request to sync data
    class sync_request_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :syncRequestId       
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey            
        # @return [string] Potential values = Cancelled, Ready, In Progress, Success, Failed
        attr_accessor :statusCode          
        # @return [string] Message containing information about the sync request results
        attr_accessor :processResultMessage
        # @return [uuid] App enrollment sync request is for
        attr_accessor :appEnrollmentId     
        # @return [date-time] The date this sync request was created
        attr_accessor :created             
        # @return [date-time] The date this sync request was last modified
        attr_accessor :modified            
        # @return [uuid] The ID number of the user who most recently modified this sync request.
        attr_accessor :modifiedUserId      
        # @return [object] The detailed results from the sync. To retrieve this collection, set `includeDetails` to true in your GET requests.
        attr_accessor :details             
    )

    # Model representing information for a sync request
    class sync_submit_model
        # @return [uuid] The identifier of the app enrollment
        attr_accessor :appEnrollmentId
    )

    # Model from the transfer ownership process.
    class transfer_owner_model
        # @return [user_account_model] The previous owner of the account.
        attr_accessor :previousOwner
        # @return [user_account_model] The new owner of the account.
        attr_accessor :newOwner     
    )

    # Model used to submit a transfer ownership request
    class transfer_owner_submit_model
        # @return [uuid] The ID of the user to transfer ownership to.
        attr_accessor :targetUserId
    )

    # A User represents a person who has the ability to authenticate against the Lockstep Platform and use
    # services such as Lockstep Inbox.  A User is uniquely identified by an Azure identity, and each user must
    # have an email address defined within their account.  All Users must validate their email to make use of
    # Lockstep platform services.  Users may have different privileges and access control rights within the
    # Lockstep Platform.
    class user_account_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. This record provides a link to the user's Azure AD B2C OID.
        attr_accessor :userId                      
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey                    
        # @return [string] The full name of the user
        attr_accessor :userName                    
        # @return [email] The email of the user
        attr_accessor :email                       
        # @return [string] The status of the user's account
        attr_accessor :status                      
        # @return [date-time] The date that the user account was created
        attr_accessor :created                     
        # @return [uuid] The ID of the user who created the user account
        attr_accessor :createdUserId               
        # @return [date-time] The date the user account was last modified
        attr_accessor :modified                    
        # @return [uuid] The ID of the user who last modified the user account
        attr_accessor :modifiedUserId              
        # @return [string] The name of the user who last modified the user account
        attr_accessor :modifiedUserName            
        # @return [uuid] The ID of the user in Azure B2C
        attr_accessor :b2CUserId                   
        # @return [uuid] The id of the Permission Level for the user.
        attr_accessor :userRole                    
        # @return [date-time] The date timestamp when the invite was sent to the user.
        attr_accessor :inviteSent                  
        # @return [string] The phone number of the user.
        attr_accessor :phoneNumber                 
        # @return [string] The fax number of the user.
        attr_accessor :faxNumber                   
        # @return [string] The title of the user; free text field
        attr_accessor :title                       
        # @return [uuid] FK to the CodeDefinition table; CodeType = 'AccountingRole'
        attr_accessor :accountingRoleCodeDefId     
        # @return [string] Address Line 1 for this User
        attr_accessor :address1                    
        # @return [string] Address Line 2 for this User
        attr_accessor :address2                    
        # @return [string] Address Line 3 for this User
        attr_accessor :address3                    
        # @return [string] City for this User
        attr_accessor :city                        
        # @return [string] Region ("state" in the US) for this User
        attr_accessor :stateRegion                 
        # @return [string] Postal Code this User
        attr_accessor :postalCode                  
        # @return [string] Country for this User This will be validated by the /api/v1/countries data set
        attr_accessor :country                     
        # @return [string] Image URL for this User
        attr_accessor :imageURL                    
        # @return [string] Description for this User.
        attr_accessor :description                 
        # @return [date-time] Last date time user logged into Azure B2C.
        attr_accessor :b2CLastLoggedIn             
        # @return [string] The default currency code used by this user entity. This value can be overridden for invoices in a different currency code. For a list of defined currency codes, see [Query Currencies](https://developer.lockstep.io/reference/get_api-v1-definitions-currencies) This will be validated by the /api/v1/currencies data set
        attr_accessor :defaultCurrencyCode         
        # @return [note_model] All notes attached to this User. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes                       
        # @return [attachment_model] All attachments attached to this User. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments                 
        # @return [custom_field_value_model] All values attached to this User. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :customFieldValues           
        # @return [code_definition_model] Accounting role definition for this User. To retrieve this collection, specify `AccountingRole` in the "Include" parameter for your query.
        attr_accessor :accountingRoleCodeDefinition
    )

    # Represents a role for a user
    class user_role_model
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :userRoleId    
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :groupKey      
        # @return [string] The name of the user role
        attr_accessor :userRoleName  
        # @return [date-time] The date that the user role was created
        attr_accessor :created       
        # @return [uuid] The ID of the user who created the user role
        attr_accessor :createdUserId 
        # @return [date-time] The date the user role was last modified
        attr_accessor :modified      
        # @return [uuid] The ID of the user who last modified the user role
        attr_accessor :modifiedUserId
    )

end
