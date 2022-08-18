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


require 'json'

module LockstepSdk

    ##
    # The FinancialAccountSyncModel represents information coming into Lockstep from an external financial system or other
    # enterprise resource planning system.  To import data from an external system, convert your original data into
    # the FinancialAccountSyncModel format and call the [Upload Sync File API](https://developer.lockstep.io/reference/post_api-v1-sync-zip).
    # This API retrieves all of the data you uploaded in a compressed ZIP file and imports it into the Lockstep
    # platform.
    #
    # Once imported, this record will be available in the Lockstep API as a [FinancialAccountModel](https://developer.lockstep.io/docs/financialaccountmodel).
    #
    # For more information on writing your own connector, see [Connector Data](https://developer.lockstep.io/docs/connector-data).
    class FinancialAccountSyncModel

        ##
        # Initialize the FinancialAccountSyncModel using the provided prototype
        def initialize(params = {})
            @code = params.dig(:code)
            @erp_key = params.dig(:erp_key)
            @name = params.dig(:name)
            @status = params.dig(:status)
            @cashflow_type = params.dig(:cashflow_type)
            @description = params.dig(:description)
            @classification = params.dig(:classification)
            @category = params.dig(:category)
            @subcategory = params.dig(:subcategory)
        end

        ##
        # @return [String] The code for the Financial Account. Can either be a general ledger or an account code.
        attr_accessor :code

        ##
        # @return [String] The External Id for the Financial Account.
        attr_accessor :erp_key

        ##
        # @return [String] The name of the Financial Account.
        attr_accessor :name

        ##
        # @return [String] The status of the Financial Account. Possible values are active, inactive, deleted or archived.
        attr_accessor :status

        ##
        # @return [String] The cashflow type for the Financial Account. Examples include cash, financing, investment or operation.
        attr_accessor :cashflow_type

        ##
        # @return [String] The description for the Financial Account.
        attr_accessor :description

        ##
        # @return [String] The classification for the Financial Account. Possible values are Asset, Equity, Expense, Liability or Income.
        attr_accessor :classification

        ##
        # @return [String] The category for the Financial Account. Examples include Current Asset, Current Liability, Common Stock
        attr_accessor :category

        ##
        # @return [String] The subcategory for the Financial Account. Examples include Cash, Property, Bank Loan, etc.
        attr_accessor :subcategory

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'code' => @code,
                'erpKey' => @erp_key,
                'name' => @name,
                'status' => @status,
                'cashflowType' => @cashflow_type,
                'description' => @description,
                'classification' => @classification,
                'category' => @category,
                'subcategory' => @subcategory,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
