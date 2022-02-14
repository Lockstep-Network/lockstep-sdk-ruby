# Lockstep SDK For Ruby 
![Gem](https://img.shields.io/gem/v/lockstep_sdk)

A financial service SDK for ruby for innovative accounting solutions providers.

### Who are we? 
Lockstep automates accounting workflows to improve your operational efficiency and cash flow. Accelerate payments through automated customer communications, enhanced collections activity management, and innovative forecasting and reporting.


# Getting Started
Here's how to add the Lockstep ruby SDK to your project. 

1. Add the LockstepSdk gem to your Gemfile or install it  
```bash
 gem install lockstep_sdk
```

2. Obtain an API key for the Lockstep Platform API by visiting: [API Key](https://developer.lockstep.io/docs/api-keys)

3. Creating LockstepAPI Client in your ruby file
```ruby
require 'lockstep_sdk/lockstep_api'

# env can also be prd or your own url addres
env = 'sbx'
client = LockstepSdk::LockstepApi.new(env)
client.with_api_key({INSERT_API_KEY})

```
4. Make a ping call to make sure you're connected https://developer.lockstep.io/reference/get_api-v1-status

```ruby
status_results = client.status.ping()
puts status_results
```

You now have your API credentials and have successfully created your client. 

## Features
- [Activities](https://developer.lockstep.io/reference/get_api-v1-activities-id)
- [ApiKeys](https://developer.lockstep.io/reference/get_api-v1-apikeys-id)
- [AppEnrollments](https://developer.lockstep.io/reference/get_api-v1-appenrollments-id)
- [Applications](https://developer.lockstep.io/reference/get_api-v1-applications-id)
- [Attachments](https://developer.lockstep.io/reference/get_api-v1-attachments-id)
- [Code Definitions](https://developer.lockstep.io/reference/get_api-v1-codedefinitions-id)
- [Companies](https://developer.lockstep.io/reference/get_api-v1-companies-id)
- [Contacts](https://developer.lockstep.io/reference/get_api-v1-contacts-id)
- [Countries](https://developer.lockstep.io/reference/get_api-v1-countries)
- [Credit Memo Applied](https://developer.lockstep.io/reference/get_api-v1-creditmemoapplied-id)
- [Currencies](https://developer.lockstep.io/reference/get_api-v1-currencies)
- [CustomFieldDefinitions](https://developer.lockstep.io/reference/get_api-v1-customfielddefinitions-id)
- [CustomFieldValues](https://developer.lockstep.io/reference/get_api-v1-customfieldvalues-definitionid-recordkey)
- [Definitions](https://developer.lockstep.io/reference/get_api-v1-definitions-countries)
- [Emails](https://developer.lockstep.io/reference/get_api-v1-emails-id)
- [Erps](https://developer.lockstep.io/reference/get_api-v1-erps)
- [InvoiceHistory](https://developer.lockstep.io/reference/get_api-v1-invoicehistory-id)
- [Invoices](https://developer.lockstep.io/reference/get_api-v1-invoices-id)
- [Leads](https://developer.lockstep.io/reference/post_api-v1-leads)
- [Migration](https://developer.lockstep.io/reference/post_api-v1-migration)
- [Notes](https://developer.lockstep.io/reference/get_api-v1-notes-id)
- [PaymentApplications](https://developer.lockstep.io/reference/get_api-v1-paymentapplications-id)
- [Payments](https://developer.lockstep.io/reference/get_api-v1-payments-id)
- [Provisioning](https://developer.lockstep.io/reference/post_api-v1-provisioning)
- [Reports](https://developer.lockstep.io/reference/get_api-v1-reports-cashflow)
- [States](https://developer.lockstep.io/reference/get_api-v1-states)
- [Status](https://developer.lockstep.io/reference/get_api-v1-status)
- [Sync](https://developer.lockstep.io/reference/post_api-v1-sync)
- [UserAccounts](https://developer.lockstep.io/reference/get_api-v1-useraccounts-id)
- [UserRoles](https://developer.lockstep.io/reference/get_api-v1-userroles-id)

## How to Use (Basic Usage)
This example will show you how to call an API, using the [Query Invoices API](https://developer.lockstep.io/reference/get_api-v1-invoices-query) to retrieve a collection of invoices. 

```ruby
# Connect to Client
# Lockstep provides sandbox and production environments
env = 'sbx'
client = LockstepSdk::LockstepApi.new(env)

# Add your API key here
client.with_api_key({INSERT_API_KEY})

# Querying for the first 10 invoices sorted by invoice date
invoices = client.invoices.query_invoices(
            pageSize: 100, # number of items per page
            pageNumber: 0, # page number
            filter: "invoiceDate GT 2021-01-10 AND invoiceDate LT 2021-05-10", # filter query
            include_param: "Company", # includes extra fields
            order: "invoiceDate asc" # ordering
) 

puts invoices['records']
```

## Sample Project 

Lockstep provides example code on the [Fetch Invoice Sample Ruby Project](https://github.com/Lockstep-Network/lockstep-sdk-examples/tree/main/RubyExample) page.
