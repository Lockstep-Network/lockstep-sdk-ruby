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

    # Aggregated Accounts Receivable Aging information.
    class arAgingHeaderInfoModel
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [string] The aging bucket this data belongs to.
        attr_accessor :report_bucket
        # @return [int32] The total number of customers.
        attr_accessor :total_customers
        # @return [int32] The total number of invoices outstanding.
        attr_accessor :total_invoices_outstanding
        # @return [double] The total amount outstanding.
        attr_accessor :total_outstanding_amount
        # @return [double] The total amount for AR.
        attr_accessor :total_ar_amount
        # @return [double] Portion of Total AR this data represents.
        attr_accessor :percentage_of_total_ar
    end
end
