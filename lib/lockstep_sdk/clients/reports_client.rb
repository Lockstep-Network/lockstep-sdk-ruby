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
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'awrence'

class ReportsClient

    ##
    # Initialize the ReportsClient class with a lockstepsdk instance.
    # @param lockstepsdk [LockstepApi] The Lockstep API client object for this connection
    def initialize(lockstepsdk)
        @lockstepsdk = lockstepsdk
    end


    ##
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

    ##
    # Retrieves a current Daily Sales Outstanding (DSO) report for this account.
    #
    # Daily Sales Outstanding, or DSO, is a metric that indicates the average number of days that it takes for an invoice to be fully paid.  You can use this report to identify whether a company is improving on its ability to collect on invoices.
    #
    def daily_sales_outstanding()
        path = "/api/v1/Reports/dailysalesoutstanding"
        @lockstepsdk.request(:get, path, nil, nil)
    end

    ##
    # Retrieves a current Risk Rate report for this account.
    #
    # Risk Rate is a metric that indicates the percentage of total AR balance left unpaid after 90 days.  You can use this report to identify the percentage of invoice value that is not being collected in a timely manner.
    #
    def risk_rates()
        path = "/api/v1/Reports/riskrates"
        @lockstepsdk.request(:get, path, nil, nil)
    end

    ##
    # Retrieves AR header information up to the date specified.
    #
    # @param report_date [date] The date of the report.
    # @param company_id [uuid] Include a company to get AR data for a specific company, leave as null to include all Companies.
    def accounts_receivable_header(report_date:, company_id:)
        path = "/api/v1/Reports/ar-header"
        params = {:reportDate => report_date, :companyId => company_id}
        @lockstepsdk.request(:get, path, nil, params)
    end

    ##
    # The Aging Report contains information about the total dollar value of invoices broken down by their age. Last default or specified bucket treated as a catch all bucket for values that fit in that bucket or beyond.
    #
    # You can specify viewing parameters for the aging report such as currency code and date bucket configuration. You can also view aging data for an entire account or a specific company.
    #
    # This information is recalculated when invoice data changes.  After each invoice data change occurs, Lockstep queues up a calculation based on the current invoice data at that time.  This information is calculated and persisted for each customer so that the report will be available quickly.
    #
    # To force a recalculation of aging data, specify the `recalculate` option.  Note that forcing a recalculation will slow your API response time.
    #
    # @param company_id [uuid] Company aging buckets are filtered by (all company aging returned if not company specified)
    # @param recalculate [boolean] Force api to recalculate aging data, cached data may be returned when set to false
    # @param currency_code [string] Currency aging buckets are converted to (all aging data returned without currency conversion if no currency is specified)
    # @param currency_provider [string] Currency provider currency rates should be returned from to convert aging amounts to (default Lockstep currency provider used if no data provider specified)
    # @param buckets [int32] Customized buckets used for aging calculations (default buckets [0,30,60,90,120,180] will be used if buckets not specified)
    def invoice_aging_report(company_id:, recalculate:, currency_code:, currency_provider:, buckets:)
        path = "/api/v1/Reports/aging"
        params = {:CompanyId => company_id, :Recalculate => recalculate, :CurrencyCode => currency_code, :CurrencyProvider => currency_provider, :Buckets => buckets}
        @lockstepsdk.request(:get, path, nil, params)
    end

    ##
    # Retrieves AR Aging Header information report broken down by aging bucket.
    #
    # The AR Aging Header report contains aggregated information about the `TotalInvoicesPastDue`, `TotalCustomers`, and their respective `PercentageOfTotalAr` grouped by their aging `ReportBucket`.
    #
    def accounts_receivable_aging_header()
        path = "/api/v1/Reports/ar-aging-header"
        @lockstepsdk.request(:get, path, nil, nil)
    end

    ##
    # Retrieves Attachment Header information for the requested companyId.
    #
    # The Attachment Header report contains aggregated information about the `TotalAttachments`, `TotalArchived`, and `TotalActive` attachment classifications.
    #
    # @param company_id [uuid] Include a specific company to get Attachment data for, leave as null to include all Companies.
    def attachments_header_information(company_id:)
        path = "/api/v1/Reports/attachments-header"
        params = {:companyId => company_id}
        @lockstepsdk.request(:get, path, nil, params)
    end

    ##
    # Generates a Trial Balance Report for the given time range.
    #
    # @param start_date [date-time] 
    # @param end_date [date-time] 
    def trial_balance_report(start_date:, end_date:)
        path = "/api/v1/Reports/trial-balance"
        params = {:startDate => start_date, :endDate => end_date}
        @lockstepsdk.request(:get, path, nil, params)
    end

    ##
    # Generates an Income Statement for the given time range.
    #
    # @param start_date [date-time] The start date of the report
    # @param end_date [date-time] The end date of the report
    # @param column_option [string] The desired column splitting of the report data. An empty string or anything unrecognized will result in only totals being displayed. Options are as follows: By Period - a column for every month/fiscal period within the reporting dates Quarterly - a column for every quarter within the reporting dates Annually - a column for every year within the reporting dates
    # @param display_depth [ReportDepth] The desired row splitting of the report data. For Income Statements, the minimum report depth is 1. Options are as follows: 1 - combine all accounts by their category 2 - combine all accounts by their subcategory 3 - display all accounts
    # @param comparison_period [string] Add a column for historical data with the following options and use showCurrencyDifference and/or show percentageDifference to display a comparison of that historical data to the report period. Options are as follows (note for YTD the data will be compared as a percentage of YTD and showCurrencyDifference and showPercentageDifference should not be used): "PP" - previous period (will show the previous quarter or year if Quarterly or Annually is chosen for columnOption) "PY" - previous year (the same date range as the report, but for the year prior) "YTD" - year to date (the current financial year to the current period)
    # @param show_currency_difference [boolean] A boolean to turn on a currency based difference between the reporting period and the comparison period.
    # @param show_percentage_difference [boolean] A boolean to turn on a percent based difference between the reporting period and the comparison period.
    def income_statement_report(start_date:, end_date:, column_option:, display_depth:, comparison_period:, show_currency_difference:, show_percentage_difference:)
        path = "/api/v1/Reports/income-statement"
        params = {:startDate => start_date, :endDate => end_date, :columnOption => column_option, :displayDepth => display_depth, :comparisonPeriod => comparison_period, :showCurrencyDifference => show_currency_difference, :showPercentageDifference => show_percentage_difference}
        @lockstepsdk.request(:get, path, nil, params)
    end
end
