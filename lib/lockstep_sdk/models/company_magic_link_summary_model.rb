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
    # A summary of companies combined with their most recent magic links
    class CompanyMagicLinkSummaryModel

        ##
        # Initialize the CompanyMagicLinkSummaryModel using the provided prototype
        def initialize(params = {})
            @company_id = params.dig(:company_id)
            @company_name = params.dig(:company_name)
            @company_type = params.dig(:company_type)
            @group_key = params.dig(:group_key)
            @primary_contact_name = params.dig(:primary_contact_name)
            @primary_contact_email_address = params.dig(:primary_contact_email_address)
            @point_of_contact = params.dig(:point_of_contact)
            @outstanding_amount = params.dig(:outstanding_amount)
            @total_open_invoices = params.dig(:total_open_invoices)
            @past_due = params.dig(:past_due)
            @total_visits = params.dig(:total_visits)
            @links_sent = params.dig(:links_sent)
            @latest_magic_link_date = params.dig(:latest_magic_link_date)
            @latest_magic_link_id = params.dig(:latest_magic_link_id)
            @latest_magic_link_status = params.dig(:latest_magic_link_status)
        end

        ##
        # @return [Uuid] The unique id for this company
        attr_accessor :company_id

        ##
        # @return [String] The short name of the company.
        attr_accessor :company_name

        ##
        # @return [String] This field indicates the type of company. It can be one of a limited number of values: Company, Customer, Group, Vendor, or Third Party. A company that represents both a customer and a vendor is identified as a CustomerVendor. * `Company` - This record represents a company that is part of the organization of the account holder. * `Customer` - This record represents a business entity that purchases things from the account holder. * `Group` - Only one record of type `GROUP` exists in each account. Contains your account profile. * `Vendor` - This record represents a business entity that sells things to the account holder. * `Third Party` - This record represents a business entity that is neither a customer nor vendor. * `CustomerVendor` - Both a customer and a vendor. * `CompanyProfile` - Profile for a Company, each Company should have at most 1 profile, used only for Profile Management.
        attr_accessor :company_type

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [String] The name of the primary contact for this company
        attr_accessor :primary_contact_name

        ##
        # @return [String] The email of the primary contact for this company
        attr_accessor :primary_contact_email_address

        ##
        # @return [String] The point of contact for this company
        attr_accessor :point_of_contact

        ##
        # @return [Int32] The total outstanding amount for this company
        attr_accessor :outstanding_amount

        ##
        # @return [Int32] The total number of open invoices for this company
        attr_accessor :total_open_invoices

        ##
        # @return [Int32] The total number of invoices that are past due for this company
        attr_accessor :past_due

        ##
        # @return [Int32] Total number of visits for all magic links sent for this company
        attr_accessor :total_visits

        ##
        # @return [Int32] Total number of sent links for this company
        attr_accessor :links_sent

        ##
        # @return [Date-time] Created date of the most recent magic link made for this company
        attr_accessor :latest_magic_link_date

        ##
        # @return [Uuid] Id of the most recent magic link made for this company
        attr_accessor :latest_magic_link_id

        ##
        # @return [MagicLinkStatus] Status of the most recent magic link made for this company
        attr_accessor :latest_magic_link_status

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'companyId' => @company_id,
                'companyName' => @company_name,
                'companyType' => @company_type,
                'groupKey' => @group_key,
                'primaryContactName' => @primary_contact_name,
                'primaryContactEmailAddress' => @primary_contact_email_address,
                'pointOfContact' => @point_of_contact,
                'outstandingAmount' => @outstanding_amount,
                'totalOpenInvoices' => @total_open_invoices,
                'pastDue' => @past_due,
                'totalVisits' => @total_visits,
                'linksSent' => @links_sent,
                'latestMagicLinkDate' => @latest_magic_link_date,
                'latestMagicLinkId' => @latest_magic_link_id,
                'latestMagicLinkStatus' => @latest_magic_link_status,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
