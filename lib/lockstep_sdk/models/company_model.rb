#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @author     Manish Narayan B S <manish.n@lockstep.io>
# @author     Rishi Rajkumar Jawahar <rjawahar@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'json'

module LockstepSdk

    # A Company represents a customer, a vendor, or a company within the organization of the account holder.
    # Companies can have parents and children, representing an organizational hierarchy of corporate entities.
    # You can use Companies to track projects and financial data under this Company label.
    # 
    # See [Vendors, Customers, and Companies](https://developer.lockstep.io/docs/companies-customers-and-vendors) for more information.
    class CompanyModel

        # Initialize the CompanyModel using the provided prototype
        def initialize(params = {})
            @company_id = params.dig(:company_id)
            @company_name = params.dig(:company_name)
            @erp_key = params.dig(:erp_key)
            @company_type = params.dig(:company_type)
            @company_status = params.dig(:company_status)
            @parent_company_id = params.dig(:parent_company_id)
            @enterprise_id = params.dig(:enterprise_id)
            @group_key = params.dig(:group_key)
            @is_active = params.dig(:is_active)
            @default_currency_code = params.dig(:default_currency_code)
            @company_logo_url = params.dig(:company_logo_url)
            @primary_contact_id = params.dig(:primary_contact_id)
            @address1 = params.dig(:address1)
            @address2 = params.dig(:address2)
            @address3 = params.dig(:address3)
            @corp_city = params.dig(:corp_city)
            @corp_state = params.dig(:corp_state)
            @corp_postal_code = params.dig(:corp_postal_code)
            @corp_country = params.dig(:corp_country)
            @corp_phone = params.dig(:corp_phone)
            @corp_fax = params.dig(:corp_fax)
            @city = params.dig(:city)
            @state_region = params.dig(:state_region)
            @postal_code = params.dig(:postal_code)
            @country = params.dig(:country)
            @phone_number = params.dig(:phone_number)
            @fax_number = params.dig(:fax_number)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
            @modified_user_name = params.dig(:modified_user_name)
            @tax_id = params.dig(:tax_id)
            @duns_number = params.dig(:duns_number)
            @ap_email_address = params.dig(:ap_email_address)
            @ar_email_address = params.dig(:ar_email_address)
            @domain_name = params.dig(:domain_name)
            @company_classification_code_def_id = params.dig(:company_classification_code_def_id)
            @description = params.dig(:description)
            @website = params.dig(:website)
            @app_enrollment_id = params.dig(:app_enrollment_id)
            @notes = params.dig(:notes)
            @attachments = params.dig(:attachments)
            @contacts = params.dig(:contacts)
            @invoices = params.dig(:invoices)
            @custom_field_definitions = params.dig(:custom_field_definitions)
            @custom_field_values = params.dig(:custom_field_values)
            @company_classification_code_definition = params.dig(:company_classification_code_definition)
        end

        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform. For the ID of this record in its originating financial system, see `ErpKey`.
        attr_accessor :company_id
        # @return [String] The short name of the company.
        attr_accessor :company_name
        # @return [String] The unique ID of this record as it was known in its originating financial system. If this company record was imported from a financial system, it will have the value `ErpKey` set to the original primary key number of the record as it was known in the originating financial system. If this record was not imported, this value will be `null`. For more information, see [Identity Columns](https://developer.lockstep.io/docs/identity-columns).
        attr_accessor :erp_key
        # @return [String] This field indicates the type of company. It can be one of a limited number of values: Company, Customer, Group, or Vendor. A company that represents both a customer and a vendor is identified as a CustomerVendor. * `Company` - This record represents a company that is part of the organization of the account holder. * `Customer` - This record represents a business entity that purchases things from the account holder. * `Group` - Only one record of type `GROUP` exists in each account. Contains your account profile. * `Vendor` - This record represents a business entity that sells things to the account holder. * `CustomerVendor` - Both a customer and a vendor.
        attr_accessor :company_type
        # @return [String] The status of the company. Companies can be either `Active` or `Inactive`. When matched to a Lockstep corporate profile, this value will change to reflect that this record will be kept in sync with that company's identity.
        attr_accessor :company_status
        # @return [Uuid] If this business entity is part of an organization, this value is non-null and it is set to the `CompanyId` value of the parent company of this business entity. If this value is null, this business entity is a standalone.
        attr_accessor :parent_company_id
        # @return [Uuid] For convenience, this field indicates the top-level parent company. This can be used to jump directly to the top parent in complex organizational hierarchies.
        attr_accessor :enterprise_id
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [Boolean] This flag indicates whether the company is currently active. An inactive company should be hidden from the user interface but will still be available for querying.
        attr_accessor :is_active
        # @return [String] The default currency code used by this business entity. This value can be overridden for invoices in a different currency code. For a list of defined currency codes, see [Query Currencies](https://developer.lockstep.io/reference/get_api-v1-definitions-currencies)
        attr_accessor :default_currency_code
        # @return [String] The URL of this company's logo, if known.
        attr_accessor :company_logo_url
        # @return [Uuid] The Lockstep `ContactId` of the primary contact for this company.
        attr_accessor :primary_contact_id
        # @return [String] Address info
        attr_accessor :address1
        # @return [String] Address info
        attr_accessor :address2
        # @return [String] Address info
        attr_accessor :address3
        # @return [String] Corporate Address info
        attr_accessor :corp_city
        # @return [String] Corporate Address info
        attr_accessor :corp_state
        # @return [String] Corporate Address info
        attr_accessor :corp_postal_code
        # @return [String] Corporate Address info
        attr_accessor :corp_country
        # @return [String] Corporate phone number
        attr_accessor :corp_phone
        # @return [String] Corporate fax number
        attr_accessor :corp_fax
        # @return [String] Address info
        attr_accessor :city
        # @return [String] Address info
        attr_accessor :state_region
        # @return [String] Address info
        attr_accessor :postal_code
        # @return [String] Address info
        attr_accessor :country
        # @return [String] Phone number
        attr_accessor :phone_number
        # @return [String] Fax number
        attr_accessor :fax_number
        # @return [Date-time] The date this company was created
        attr_accessor :created
        # @return [Uuid] The ID of the user who created this company
        attr_accessor :created_user_id
        # @return [Date-time] The date this company was last modified
        attr_accessor :modified
        # @return [Uuid] The ID of the user who last modified this company
        attr_accessor :modified_user_id
        # @return [String] The name of the user who last modified this company
        attr_accessor :modified_user_name
        # @return [String] Federal Tax ID
        attr_accessor :tax_id
        # @return [String] Dun & Bradstreet Number
        attr_accessor :duns_number
        # @return [Email] AP (Accounts Payable) Email Address
        attr_accessor :ap_email_address
        # @return [Email] AR (Accounts Receivable) Email Address
        attr_accessor :ar_email_address
        # @return [String] For companies that use a custom domain name for their email system, this is the domain name used by this company. If this value is known, new emails that come in from this domain will be connected to this company.
        attr_accessor :domain_name
        # @return [Uuid] Identifier for classification of this company.
        attr_accessor :company_classification_code_def_id
        # @return [String] Description of the company.
        attr_accessor :description
        # @return [String] Website URL for this company.
        attr_accessor :website
        # @return [Uuid] The AppEnrollmentId of the application that imported this company record. For accounts with more than one financial system connected, this field identifies the originating financial system that produced this record.
        attr_accessor :app_enrollment_id
        # @return [NoteModel] All notes attached to this company. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes
        # @return [AttachmentModel] All attachments attached to this company. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments
        # @return [ContactModel] All contacts attached to this company. To retrieve this collection, specify `Contacts` in the "Include" parameter for your query.
        attr_accessor :contacts
        # @return [Object] All invoices attached to this company. To retrieve this collection, specify `Invoices` in the "Include" parameter for your query. For more information on Invoices, see [InvoiceModel](https://developer.lockstep.io/reference/get_api-v1-invoices-id).
        attr_accessor :invoices
        # @return [CustomFieldDefinitionModel] All definitions attached to this company. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_definitions
        # @return [CustomFieldValueModel] All values attached to this company. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_values
        # @return [CodeDefinitionModel] Classification code definition for this company. To retrieve this collection, specify `Classification` in the "Include" parameter for your query.
        attr_accessor :company_classification_code_definition

        def as_json(options={})
            {
                'companyId' => @company_id,
                'companyName' => @company_name,
                'erpKey' => @erp_key,
                'companyType' => @company_type,
                'companyStatus' => @company_status,
                'parentCompanyId' => @parent_company_id,
                'enterpriseId' => @enterprise_id,
                'groupKey' => @group_key,
                'isActive' => @is_active,
                'defaultCurrencyCode' => @default_currency_code,
                'companyLogoUrl' => @company_logo_url,
                'primaryContactId' => @primary_contact_id,
                'address1' => @address1,
                'address2' => @address2,
                'address3' => @address3,
                'corpCity' => @corp_city,
                'corpState' => @corp_state,
                'corpPostalCode' => @corp_postal_code,
                'corpCountry' => @corp_country,
                'corpPhone' => @corp_phone,
                'corpFax' => @corp_fax,
                'city' => @city,
                'stateRegion' => @state_region,
                'postalCode' => @postal_code,
                'country' => @country,
                'phoneNumber' => @phone_number,
                'faxNumber' => @fax_number,
                'created' => @created,
                'createdUserId' => @created_user_id,
                'modified' => @modified,
                'modifiedUserId' => @modified_user_id,
                'modifiedUserName' => @modified_user_name,
                'taxId' => @tax_id,
                'dunsNumber' => @duns_number,
                'apEmailAddress' => @ap_email_address,
                'arEmailAddress' => @ar_email_address,
                'domainName' => @domain_name,
                'companyClassificationCodeDefId' => @company_classification_code_def_id,
                'description' => @description,
                'website' => @website,
                'appEnrollmentId' => @app_enrollment_id,
                'notes' => @notes,
                'attachments' => @attachments,
                'contacts' => @contacts,
                'invoices' => @invoices,
                'customFieldDefinitions' => @custom_field_definitions,
                'customFieldValues' => @custom_field_values,
                'companyClassificationCodeDefinition' => @company_classification_code_definition,
            }
        end

        def to_json(*options)
            as_json(*options).to_json(*options)
        end
    end
end
