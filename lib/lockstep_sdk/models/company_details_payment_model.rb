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
    # Company payment collected information
    class CompanyDetailsPaymentModel

        ##
        # Initialize the CompanyDetailsPaymentModel using the provided prototype
        def initialize(params = {})
            @group_key = params.dig(:group_key)
            @payment_id = params.dig(:payment_id)
            @payment_applied_id = params.dig(:payment_applied_id)
            @payment_type = params.dig(:payment_type)
            @invoice_id = params.dig(:invoice_id)
            @invoice_type_code = params.dig(:invoice_type_code)
            @invoice_reference_code = params.dig(:invoice_reference_code)
            @invoice_total_amount = params.dig(:invoice_total_amount)
            @payment_date = params.dig(:payment_date)
            @payment_amount = params.dig(:payment_amount)
        end

        ##
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key

        ##
        # @return [Uuid] Unique identifier for payment
        attr_accessor :payment_id

        ##
        # @return [Uuid] Unique identifier for payment applied
        attr_accessor :payment_applied_id

        ##
        # @return [String] Payment type
        attr_accessor :payment_type

        ##
        # @return [Uuid] Unique identifier for invoice payment is associated with
        attr_accessor :invoice_id

        ##
        # @return [String] Invoice type payment is associated with
        attr_accessor :invoice_type_code

        ##
        # @return [String] Invoice reference code payment is associated with
        attr_accessor :invoice_reference_code

        ##
        # @return [Double] Invoice total amount payment is associated with
        attr_accessor :invoice_total_amount

        ##
        # @return [Date-time] Date payment placed
        attr_accessor :payment_date

        ##
        # @return [Double] Amount payment was made for
        attr_accessor :payment_amount

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'groupKey' => @group_key,
                'paymentId' => @payment_id,
                'paymentAppliedId' => @payment_applied_id,
                'paymentType' => @payment_type,
                'invoiceId' => @invoice_id,
                'invoiceTypeCode' => @invoice_type_code,
                'invoiceReferenceCode' => @invoice_reference_code,
                'invoiceTotalAmount' => @invoice_total_amount,
                'paymentDate' => @payment_date,
                'paymentAmount' => @payment_amount,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
