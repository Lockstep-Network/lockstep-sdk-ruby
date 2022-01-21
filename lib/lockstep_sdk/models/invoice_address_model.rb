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

    # Represents a single address for an invoice
    class InvoiceAddressModel

        # Initialize the InvoiceAddressModel using the provided prototype
        def initialize(params = {})
            @invoice_address_id = params.dig(:invoice_address_id)
            @group_key = params.dig(:group_key)
            @invoice_id = params.dig(:invoice_id)
            @line1 = params.dig(:line1)
            @line2 = params.dig(:line2)
            @line3 = params.dig(:line3)
            @city = params.dig(:city)
            @region = params.dig(:region)
            @postal_code = params.dig(:postal_code)
            @country = params.dig(:country)
            @latitude = params.dig(:latitude)
            @longitude = params.dig(:longitude)
            @created = params.dig(:created)
            @created_user_id = params.dig(:created_user_id)
            @modified = params.dig(:modified)
            @modified_user_id = params.dig(:modified_user_id)
        end

        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :invoice_address_id
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [Uuid] The ID number of the invoice this address belongs to
        attr_accessor :invoice_id
        # @return [String] The first line of the address.
        attr_accessor :line1
        # @return [String] The second line of the address.
        attr_accessor :line2
        # @return [String] The third line of the address.
        attr_accessor :line3
        # @return [String] The name of the city for this address.
        attr_accessor :city
        # @return [String] The state or region part of this address.
        attr_accessor :region
        # @return [String] The postal code for this address.
        attr_accessor :postal_code
        # @return [String] The country for this address.
        attr_accessor :country
        # @return [Float] The latitude of this address, if available.
        attr_accessor :latitude
        # @return [Float] The longitude of this address, if available.
        attr_accessor :longitude
        # @return [Date-time] The date on which this address record was created.
        attr_accessor :created
        # @return [Uuid] The ID number of the user who created this address.
        attr_accessor :created_user_id
        # @return [Date-time] The date on which this address record was last modified.
        attr_accessor :modified
        # @return [Uuid] The ID number of the user who most recently modified this address.
        attr_accessor :modified_user_id

        def as_json(options={})
            {
                'invoiceAddressId' => @invoice_address_id,
                'groupKey' => @group_key,
                'invoiceId' => @invoice_id,
                'line1' => @line1,
                'line2' => @line2,
                'line3' => @line3,
                'city' => @city,
                'region' => @region,
                'postalCode' => @postal_code,
                'country' => @country,
                'latitude' => @latitude,
                'longitude' => @longitude,
                'created' => @created,
                'createdUserId' => @created_user_id,
                'modified' => @modified,
                'modifiedUserId' => @modified_user_id,
            }
        end

        def to_json(*options)
            [#{as_json(*options).to_json(*options)}]
        end
    end
end
