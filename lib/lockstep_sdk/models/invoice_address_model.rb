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

    # Represents a single address for an invoice
    class invoiceAddressModel
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :invoice_address_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The ID number of the invoice this address belongs to
        attr_accessor :invoice_id
        # @return [string] The first line of the address.
        attr_accessor :line1
        # @return [string] The second line of the address.
        attr_accessor :line2
        # @return [string] The third line of the address.
        attr_accessor :line3
        # @return [string] The name of the city for this address.
        attr_accessor :city
        # @return [string] The state or region part of this address.
        attr_accessor :region
        # @return [string] The postal code for this address.
        attr_accessor :postal_code
        # @return [string] The country for this address.
        attr_accessor :country
        # @return [float] The latitude of this address, if available.
        attr_accessor :latitude
        # @return [float] The longitude of this address, if available.
        attr_accessor :longitude
        # @return [date-time] The date on which this address record was created.
        attr_accessor :created
        # @return [uuid] The ID number of the user who created this address.
        attr_accessor :created_user_id
        # @return [date-time] The date on which this address record was last modified.
        attr_accessor :modified
        # @return [uuid] The ID number of the user who most recently modified this address.
        attr_accessor :modified_user_id
    end
end
