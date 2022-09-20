#
# Lockstep Platform SDK for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Lockstep Network <support@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


require 'awrence'

class ReportsClient

    ##
    # Initialize the ReportsClient class with an API client instance.
    # @param connection [LockstepApi] The API client object for this connection
    def initialize(connection)
        @connection = connection
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
        @connection.request(:get, path, nil, params)
    end

    ##
    # Retrieves a current Payables Summary report for this account.
    #
    # The Payables Summary report indicates the amount of payments sent and bills received within a given timeframe.  You can use this report to determine the overall balance of money coming into and out of your accounts receivable and accounts payable businesses.
    #
    # @param timeframe [int32] Number of days of data to include for the Payables Summary Report (default is 30 days from today)
    def payables_summary_report(timeframe:)
        path = "/api/v1/Reports/payables-summary"
        params = {:timeframe => timeframe}
        @connection.request(:get, path, nil, params)
    end

    ##
    # Retrieves a current Daily Sales Outstanding (DSO) report for this account.
    #
    # Daily Sales Outstanding, or DSO, is a metric that indicates the average number of days that it takes for an invoice to be fully paid.  You can use this report to identify whether a company is improving on its ability to collect on invoices.
    #
    # @param report_date [date-time] Optional: Specify the specific report date to generate the from (default UTC now)
    def daily_sales_outstanding(report_date:)
        path = "/api/v1/Reports/daily-sales-outstanding"
        params = {:reportDate => report_date}
        @connection.request(:get, path, nil, params)
    end

    ##
    # Retrieves a current Days Payable Outstanding (DPO) report for this account.
    #
    # Days payable outstanding (DPO) is a financial ratio that indicates the average time (in days) that a company takes to pay its bills to its trade creditors, which may include suppliers, vendors, or financiers.
    #
    def days_payable_outstanding()
        path = "/api/v1/Reports/daily-payable-outstanding"
        @connection.request(:get, path, nil, nil)
    end

    ##
    # Retrieves payable amount due for 4 time buckets (Today, 7 Days from Today, 14 Days from Today, and 30 Days from Today).
    #
    def payables_coming_due()
        path = "/api/v1/Reports/payables-coming-due"
        @connection.request(:get, path, nil, nil)
    end

    ##
    # Payables coming due represents the amount of cash required to pay vendor bills based on the due dates of the bills. Each bucket represents total amount due within the time period based on open Payables as of today.
    #
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. No collections are currently available but may be offered in the future
    # @param order [string] The sort order for the results, in the [Searchlight order syntax](https://github.com/tspence/csharp-searchlight).
    # @param page_size [int32] The page size for results (default 200, maximum of 10,000)
    # @param page_number [int32] The page number for results (default 0)
    def payables_coming_due_summary(filter:, include_param:, order:, page_size:, page_number:)
        path = "/api/v1/Reports/payables-coming-due-summary"
        params = {:filter => filter, :include => include_param, :order => order, :pageSize => page_size, :pageNumber => page_number}
        @connection.request(:get, path, nil, params)
    end

    ##
    # Retrieves total number of vendors, bills, the total amount outstanding, for a group.
    #
    # @param report_date [date-time] The date the outstanding values are calculated on. Should be either the current day, 7 days after the current day, 14 days after the current day, or 30 days after the current day.
    def payables_coming_due_header(report_date:)
        path = "/api/v1/Reports/payables-coming-due-header"
        params = {:reportDate => report_date}
        @connection.request(:get, path, nil, params)
    end

    ##
    # Retrieves a current Risk Rate report for this account.
    #
    # Risk Rate is a metric that indicates the percentage of total AR balance left unpaid after 90 days.  You can use this report to identify the percentage of invoice value that is not being collected in a timely manner.
    #
    def risk_rates()
        path = "/api/v1/Reports/risk-rates"
        @connection.request(:get, path, nil, nil)
    end

    ##
    # Retrieves AR header information up to the date specified.
    #
    # @param report_date [date] The date of the report.
    # @param company_id [uuid] Include a company to get AR data for a specific company, leave as null to include all Companies.
    def accounts_receivable_header(report_date:, company_id:)
        path = "/api/v1/Reports/ar-header"
        params = {:reportDate => report_date, :companyId => company_id}
        @connection.request(:get, path, nil, params)
    end

    ##
    # Retrieves AP header information up to the date specified.
    #
    # @param report_date [date] The date of the report.
    # @param company_id [uuid] Include a company to get AP data for a specific company, leave as null to include all Companies.
    def accounts_payable_header(report_date:, company_id:)
        path = "/api/v1/Reports/ap-header"
        params = {:reportDate => report_date, :companyId => company_id}
        @connection.request(:get, path, nil, params)
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
    # @param ap_report [boolean] A boolean to turn on AP Aging reports
    def invoice_aging_report(company_id:, recalculate:, currency_code:, currency_provider:, buckets:, ap_report:)
        path = "/api/v1/Reports/aging"
        params = {:CompanyId => company_id, :Recalculate => recalculate, :CurrencyCode => currency_code, :CurrencyProvider => currency_provider, :Buckets => buckets, :ApReport => ap_report}
        @connection.request(:get, path, nil, params)
    end

    ##
    # Retrieves AR Aging Header information report broken down by aging bucket.
    #
    # The AR Aging Header report contains aggregated information about the `TotalInvoicesPastDue`, `TotalCustomers`, and their respective `PercentageOfTotalAr` grouped by their aging `ReportBucket`.
    #
    def accounts_receivable_aging_header()
        path = "/api/v1/Reports/ar-aging-header"
        @connection.request(:get, path, nil, nil)
    end

    ##
    # Retrieves AP Aging Header information report broken down by aging bucket.
    #
    # The AP Aging Header report contains aggregated information about the `TotalBillsPastDue`, `TotalVendors`, and their respective `PercentageOfTotalAp` grouped by their aging `ReportBucket`.
    #
    def accounts_payable_aging_header()
        path = "/api/v1/Reports/ap-aging-header"
        @connection.request(:get, path, nil, nil)
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
        @connection.request(:get, path, nil, params)
    end

    ##
    # Generates a Trial Balance Report for the given time range.
    #
    # @param start_date [date-time] The start date of the report
    # @param end_date [date-time] The end date of the report
    # @param app_enrollment_id [uuid] The app enrollment id of the app enrollment whose data will be used.
    def trial_balance_report(start_date:, end_date:, app_enrollment_id:)
        path = "/api/v1/Reports/trial-balance"
        params = {:startDate => start_date, :endDate => end_date, :appEnrollmentId => app_enrollment_id}
        @connection.request(:get, path, nil, params)
    end

    ##
    # Generates an Income Statement for the given time range.
    #
    # @param start_date [date-time] The start date of the report
    # @param end_date [date-time] The end date of the report
    # @param app_enrollment_id [uuid] The app enrollment id of the app enrollment whose data will be used.
    # @param column_option [string] The desired column splitting of the report data. An empty string or anything unrecognized will result in only totals being displayed. Options are as follows: By Period - a column for every month/fiscal period within the reporting dates Quarterly - a column for every quarter within the reporting dates Annually - a column for every year within the reporting dates
    # @param display_depth [ReportDepth] The desired row splitting of the report data. For Income Statements, the minimum report depth is 1. Options are as follows: 1 - combine all accounts by their category 2 - combine all accounts by their subcategory 3 - display all accounts
    # @param comparison_period [string] Add a column for historical data with the following options and use showCurrencyDifference and/or show percentageDifference to display a comparison of that historical data to the report period. Options are as follows (note for YTD the data will be compared as a percentage of YTD and showCurrencyDifference and showPercentageDifference should not be used): "PP" - previous period (will show the previous quarter or year if Quarterly or Annually is chosen for columnOption) "PY" - previous year (the same date range as the report, but for the year prior) "YTD" - year to date (the current financial year to the current period)
    # @param show_currency_difference [boolean] A boolean to turn on a currency based difference between the reporting period and the comparison period.
    # @param show_percentage_difference [boolean] A boolean to turn on a percent based difference between the reporting period and the comparison period.
    def income_statement_report(start_date:, end_date:, app_enrollment_id:, column_option:, display_depth:, comparison_period:, show_currency_difference:, show_percentage_difference:)
        path = "/api/v1/Reports/income-statement"
        params = {:startDate => start_date, :endDate => end_date, :appEnrollmentId => app_enrollment_id, :columnOption => column_option, :displayDepth => display_depth, :comparisonPeriod => comparison_period, :showCurrencyDifference => show_currency_difference, :showPercentageDifference => show_percentage_difference}
        @connection.request(:get, path, nil, params)
    end

    ##
    # Generates a balance sheet for the given time range.
    #
    # @param start_date [date-time] The start date of the report
    # @param end_date [date-time] The end date of the report
    # @param app_enrollment_id [uuid] The app enrollment id of the app enrollment whose data will be used.
    # @param column_option [string] The desired column splitting of the report data. An empty string or anything unrecognized will result in only totals being displayed. Options are as follows: By Period - a column for every month/fiscal period within the reporting dates Quarterly - a column for every quarter within the reporting dates Annually - a column for every year within the reporting dates
    # @param display_depth [ReportDepth] The desired row splitting of the report data. For Balance Sheets, the minimum report depth is 1. Options are as follows: 1 - combine all accounts by their category 2 - combine all accounts by their subcategory 3 - display all accounts
    # @param comparison_period [string] Add a column for historical data with the following options and use showCurrencyDifference and/or show percentageDifference to display a comparison of that historical data to the report period. "PP" - previous period (will show the previous quarter or year if Quarterly or Annually is chosen for columnOption) "PY" - previous year (the same date range as the report, but for the year prior)
    # @param show_currency_difference [boolean] A boolean to turn on a currency based difference between the reporting period and the comparison period.
    # @param show_percentage_difference [boolean] A boolean to turn on a percent based difference between the reporting period and the comparison period.
    def balance_sheet_report(start_date:, end_date:, app_enrollment_id:, column_option:, display_depth:, comparison_period:, show_currency_difference:, show_percentage_difference:)
        path = "/api/v1/Reports/balance-sheet"
        params = {:startDate => start_date, :endDate => end_date, :appEnrollmentId => app_enrollment_id, :columnOption => column_option, :displayDepth => display_depth, :comparisonPeriod => comparison_period, :showCurrencyDifference => show_currency_difference, :showPercentageDifference => show_percentage_difference}
        @connection.request(:get, path, nil, params)
    end

    ##
    # Generates a cash flow statement for the given time range.
    #
    # @param start_date [date-time] The start date of the report
    # @param end_date [date-time] The end date of the report
    # @param app_enrollment_id [uuid] The app enrollment id of the app enrollment whose data will be used.
    # @param column_option [string] The desired column splitting of the report data. An empty string or anything unrecognized will result in only totals being displayed. Options are as follows: By Period - a column for every month/fiscal period within the reporting dates Quarterly - a column for every quarter within the reporting dates Annually - a column for every year within the reporting dates
    # @param display_depth [ReportDepth] The desired row splitting of the report data. Options are as follows: 0 - combine all accounts by their classification 1 - combine all accounts by their category 2 - combine all accounts by their subcategory 3 - display all accounts
    def cash_flow_statement_report(start_date:, end_date:, app_enrollment_id:, column_option:, display_depth:)
        path = "/api/v1/Reports/cash-flow-statement"
        params = {:startDate => start_date, :endDate => end_date, :appEnrollmentId => app_enrollment_id, :columnOption => column_option, :displayDepth => display_depth}
        @connection.request(:get, path, nil, params)
    end

    ##
    # Retrieves a summary for each vendor that includes a count of their outstanding bills, the total amount outstanding, and their daily payable outstanding value.
    #
    # Days payable outstanding (DPO) is a financial ratio that indicates the average time (in days) that a company takes to pay its bills to its trade creditors, which may include suppliers, vendors, or financiers.
    #
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
    #
    # @param report_date [date-time] The date the outstanding values are calculated on. Should be either the current day or the end of a previous quarter.
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. No collections are currently available but may be offered in the future
    # @param order [string] The sort order for the results, in the [Searchlight order syntax](https://github.com/tspence/csharp-searchlight).
    # @param page_size [int32] The page size for results (default 200, maximum of 10,000)
    # @param page_number [int32] The page number for results (default 0)
    def days_payable_outstanding_summary(report_date:, filter:, include_param:, order:, page_size:, page_number:)
        path = "/api/v1/Reports/daily-payable-outstanding-summary"
        params = {:reportDate => report_date, :filter => filter, :include => include_param, :order => order, :pageSize => page_size, :pageNumber => page_number}
        @connection.request(:get, path, nil, params)
    end

    ##
    # Retrieves total number of vendors, bills, the total amount outstanding, and the daily payable outstanding value for a group.
    #
    # Days payable outstanding (DPO) is a financial ratio that indicates the average time (in days) that a company takes to pay its bills to its trade creditors, which may include suppliers, vendors, or financiers.
    #
    # @param report_date [date-time] The date the outstanding values are calculated on. Should be either the current day or the end of a previous quarter.
    def days_payable_outstanding_summary_total(report_date:)
        path = "/api/v1/Reports/daily-payable-outstanding-summary-total"
        params = {:reportDate => report_date}
        @connection.request(:get, path, nil, params)
    end
end
