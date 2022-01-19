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

    # A Company represents a customer, a vendor, or a company within the organization of the account holder.
    # Companies can have parents and children, representing an organizational hierarchy of corporate entities.
    # You can use Companies to track projects and financial data under this Company label.
    # 
    # See [Vendors, Customers, and Companies](https://developer.lockstep.io/docs/companies-customers-and-vendors) for more information.
    class companyModel
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
        # @return [noteModel] All notes attached to this company. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes
        # @return [attachmentModel] All attachments attached to this company. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments
        # @return [contactModel] All contacts attached to this company. To retrieve this collection, specify `Contacts` in the "Include" parameter for your query.
        attr_accessor :contacts
        # @return [object] All invoices attached to this company. To retrieve this collection, specify `Invoices` in the "Include" parameter for your query. For more information on Invoices, see [InvoiceModel](https://developer.lockstep.io/reference/get_api-v1-invoices-id).
        attr_accessor :invoices
        # @return [customFieldDefinitionModel] All definitions attached to this company. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_definitions
        # @return [customFieldValueModel] All values attached to this company. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_values
        # @return [codeDefinitionModel] Classification code definition for this company. To retrieve this collection, specify `Classification` in the "Include" parameter for your query.
        attr_accessor :company_classification_code_definition
    end
end
