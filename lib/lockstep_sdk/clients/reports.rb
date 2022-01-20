#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @author     Manish Narayanan <manish.n@lockstep.io>
# @author     Rishi Rajkumar Jawahar <rjawahar@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


class ReportsClient

    require 'awrence'

    # Initialize the ReportsClient class with a lockstepsdk instance.
    # @param lockstepsdk [LockstepApi] The Lockstep API client object for this connection
    def initialize(lockstepsdk)
        @lockstepsdk = lockstepsdk
    end


    # Retrieves a current Cash Flow report for this account.
    # 
    # The Cash Flow report indicates the amount of payments retrieved and invoices billed within a given timeframe.  You can use this report to determine the overall balance of money coming into and out of your accounts receivable and accounts payable businesses.
    # 
    # @param timeframe [int32] Number of days of data to include for the Cash Flow Report (default is 30 days from today)
    def cash_flow(timeframe:)
        path = "/api/v1/Reports/cashflow"
        params = {:timeframe => timeframe}
        @lockstepsdk.request(:get, path, nil, params)
    end

    # Retrieves a current Daily Sales Outstanding (DSO) report for this account.
    # 
    # Daily Sales Outstanding, or DSO, is a metric that indicates the average number of days that it takes for an invoice to be fully paid.  You can use this report to identify whether a company is improving on its ability to collect on invoices.
    # 
    def daily_sales_outstanding()
        path = "/api/v1/Reports/dailysalesoutstanding"
        @lockstepsdk.request(:get, path, nil, nil)
    end

    # Retrieves a current Risk Rate report for this account.
    # 
    # Risk Rate is a metric that indicates the percentage of total AR balance left unpaid after 90 days.  You can use this report to identify the percentage of invoice value that is not being collected in a timely manner.
    # 
    def risk_rates()
        path = "/api/v1/Reports/riskrates"
        @lockstepsdk.request(:get, path, nil, nil)
    end

    # Retrieves AR header information up to the date specified.
    # 
    # @param reportDate [date] The date of the report.
    # @param companyId [uuid] Include a company to get AR data for a specific company, leave as null to include all Companies.
    def accounts_receivable_header(reportDate:, companyId:)
        path = "/api/v1/Reports/ar-header"
        params = {:reportDate => reportDate, :companyId => companyId}
        @lockstepsdk.request(:get, path, nil, params)
    end

    # The Aging Report contains information about the total dollar value of invoices broken down by their age. Last default or specified bucket treated as a catch all bucket for values that fit in that bucket or beyond.
    # 
    # You can specify viewing parameters for the aging report such as currency code and date bucket configuration. You can also view aging data for an entire account or a specific company.
    # 
    # This information is recalculated when invoice data changes.  After each invoice data change occurs, Lockstep queues up a calculation based on the current invoice data at that time.  This information is calculated and persisted for each customer so that the report will be available quickly.
    # 
    # To force a recalculation of aging data, specify the `recalculate` option.  Note that forcing a recalculation will slow your API response time.
    # 
    # @param CompanyId [uuid] Company aging buckets are filtered by (all company aging returned if not company specified)
    # @param Recalculate [boolean] Force api to recalculate aging data, cached data may be returned when set to false
    # @param CurrencyCode [string] Currency aging buckets are converted to (all aging data returned without currency conversion if no currency is specified)
    # @param CurrencyProvider [string] Currency provider currency rates should be returned from to convert aging amounts to (default Lockstep currency provider used if no data provider specified)
    # @param Buckets [int32] Customized buckets used for aging calculations (default buckets [0,30,60,90,120,180] will be used if buckets not specified)
    def invoice_aging_report(CompanyId:, Recalculate:, CurrencyCode:, CurrencyProvider:, Buckets:)
        path = "/api/v1/Reports/aging"
        params = {:CompanyId => CompanyId, :Recalculate => Recalculate, :CurrencyCode => CurrencyCode, :CurrencyProvider => CurrencyProvider, :Buckets => Buckets}
        @lockstepsdk.request(:get, path, nil, params)
    end

    # Retrieves AR Aging Header information report broken down by aging bucket.
    # 
    # The AR Aging Header report contains aggregated information about the `TotalInvoicesPastDue`, `TotalCustomers`, and their respective `PercentageOfTotalAr` grouped by their aging `ReportBucket`.
    # 
    def accounts_receivable_aging_header()
        path = "/api/v1/Reports/ar-aging-header"
        @lockstepsdk.request(:get, path, nil, nil)
    end

    # Retrieves Attachment Header information for the requested companyId.
    # 
    # The Attachment Header report contains aggregated information about the `TotalAttachments`, `TotalArchived`, and `TotalActive` attachment classifications.
    # 
    # @param companyId [uuid] Include a specific company to get Attachment data for, leave as null to include all Companies.
    def attachments_header_information(companyId:)
        path = "/api/v1/Reports/attachments-header"
        params = {:companyId => companyId}
        @lockstepsdk.request(:get, path, nil, params)
    end
end
