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
# @version    2021.39
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#

class Migration

    def initialize(lockstepsdk) # Initialize the Activities class with a lockstepsdk instance.
        @lockstepsdk = lockstepsdk
    end
    
    #  Migrates all customer data from the Lockstep Collect system to the API, including all stored data for contacts, companies, payments, and invoices.
    #  
    def migrate_data()
        path = "/api/v1/Migration"
        @lockstepsdk.request(:post, path, nil, nil)
    end

    #  Lists all of the customer, contact, payment, and invoice data currently available for Migration.
    #  
    def list_migrations()
        path = "/api/v1/Migration/list"
        @lockstepsdk.request(:get, path, nil, nil)
    end
end
