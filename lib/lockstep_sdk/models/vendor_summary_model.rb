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
    # Contains summarized data for a vendor
    class VendorSummaryModel

        ##
        # Initialize the VendorSummaryModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @vendor_id = params.dig(:vendor_id)
            @vendor_name = params.dig(:vendor_name)
            @app_enrollment_id = params.dig(:app_enrollment_id)
            @primary_contact_name = params.dig(:primary_contact_name)
            @primary_contact_id = params.dig(:primary_contact_id)
            @amount_paid_last30 = params.dig(:amount_paid_last30)
            @advance_pay_last30 = params.dig(:advance_pay_last30)
            @advance_pay_outstanding = params.dig(:advance_pay_outstanding)
            @amount_billed_last30 = params.dig(:amount_billed_last30)
            @amount_billed_outstanding_last30 = params.dig(:amount_billed_outstanding_last30)
            @amount_billed_outstanding = params.dig(:amount_billed_outstanding)
            @bill_count_last30 = params.dig(:bill_count_last30)
            @paid_bill_count_last30 = params.dig(:paid_bill_count_last30)
            @open_bill_count = params.dig(:open_bill_count)
            @paid_bill_count = params.dig(:paid_bill_count)
            @total_bill_count = params.dig(:total_bill_count)
            @dpo = params.dig(:dpo)
        end

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Uuid] The unique ID of this Vendor
        attr_accessor :vendor_id

        ##
        # @return [String] The name of this Vendor
        attr_accessor :vendor_name

        ##
        # @return [Uuid] The app enrollment ID this Vendor is associated with
        attr_accessor :app_enrollment_id

        ##
        # @return [String] The name of this Vendor's primary contact
        attr_accessor :primary_contact_name

        ##
        # @return [Uuid] This Vendor's primary contact id
        attr_accessor :primary_contact_id

        ##
        # @return [Double] The amount paid to this Vendor in the last 30 days
        attr_accessor :amount_paid_last30

        ##
        # @return [Double] The outstanding advance pay balance on payments in the last 30 days
        attr_accessor :advance_pay_last30

        ##
        # @return [Double] The outstanding advance pay balance with this Vendor
        attr_accessor :advance_pay_outstanding

        ##
        # @return [Double] The amount billed from this Vendor in the last 30 days
        attr_accessor :amount_billed_last30

        ##
        # @return [Double] The outstanding balance with this Vendor for bills in the last 30 days
        attr_accessor :amount_billed_outstanding_last30

        ##
        # @return [Double] The outstanding balance with this Vendor
        attr_accessor :amount_billed_outstanding

        ##
        # @return [Int32] The number of bills received from this Vendor in the last 30 days
        attr_accessor :bill_count_last30

        ##
        # @return [Int32] The number of bills from this Vendor that were paid in full in the last 30 days
        attr_accessor :paid_bill_count_last30

        ##
        # @return [Int32] The number of open bills with this Vendor
        attr_accessor :open_bill_count

        ##
        # @return [Int32] The number of bills paid to this Vendor
        attr_accessor :paid_bill_count

        ##
        # @return [Int32] The total count of open and closed bills.
        attr_accessor :total_bill_count

        ##
        # @return [Double] The days payabale outstanding.
        attr_accessor :dpo

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'vendorId' => @vendor_id,
                'vendorName' => @vendor_name,
                'appEnrollmentId' => @app_enrollment_id,
                'primaryContactName' => @primary_contact_name,
                'primaryContactId' => @primary_contact_id,
                'amountPaidLast30' => @amount_paid_last30,
                'advancePayLast30' => @advance_pay_last30,
                'advancePayOutstanding' => @advance_pay_outstanding,
                'amountBilledLast30' => @amount_billed_last30,
                'amountBilledOutstandingLast30' => @amount_billed_outstanding_last30,
                'amountBilledOutstanding' => @amount_billed_outstanding,
                'billCountLast30' => @bill_count_last30,
                'paidBillCountLast30' => @paid_bill_count_last30,
                'openBillCount' => @open_bill_count,
                'paidBillCount' => @paid_bill_count,
                'totalBillCount' => @total_bill_count,
                'dpo' => @dpo,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
