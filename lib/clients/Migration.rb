#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @copyright  2021-2021 Lockstep, Inc.
# @version    2021.39
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


module LockstepSdk
    class Client
        module Migration

            #  Migrates all customer data from the Lockstep Collect system to the API, including all stored data for contacts, companies, payments, and invoices.
            #  
            def migrate_data()
                path = "/api/v1/Migration"
                send_request(:post, path, nil, nil)
            end

            #  Lists all of the customer, contact, payment, and invoice data currently available for Migration.
            #  
            def list_migrations()
                path = "/api/v1/Migration/list"
                send_request(:get, path, nil, nil)
            end
        end
    end
end
