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
        module Emails

            #  Retrieves the email with the specified email identifier.
            #  
            #  An Email represents a communication sent from one company to another.  The creator of the email is identified by the `CompanyId` field, recipient(s) by the `EmailTo` field, and cc recipient(s) by the 'EmailCC' field. The Email Model represents an email and a number of different metadata attributes related to the creation, storage, and ownership of the email.
            #  
            #  @param id [uuid] The unique ID number of the Email to retrieve.
            #  @param include [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: Attachments, CustomFields, Notes
            def retrieve_email(include)
                path = "/api/v1/Emails/#{id}"
                send_request(:get, path, nil, {include})
            end

            #  Updates an existing Email with the information supplied to this PATCH call.
            #  
            #  The PATCH method allows you to change specific values on the object while leaving other values alone.  As input you should supply a list of field names and new values.  If you do not provide the name of a field, that field will remain unchanged.  This allows you to ensure that you are only updating the specific fields desired.
            #  
            #  An Email represents a communication sent from one company to another.  The creator of the email is identified by the `CompanyId` field, recipient(s) by the `EmailTo` field, and cc recipient(s) by the 'EmailCC' field. The Email Model represents an email and a number of different metadata attributes related to the creation, storage, and ownership of the email.
            #  
            #  @param id [uuid] The unique Lockstep Platform ID number of the email to update
            #  @param body [object] A list of changes to apply to this Email
            def update_email()
                path = "/api/v1/Emails/#{id}"
                send_request(:patch, path, body, nil)
            end

            #  Deletes the Email referred to by this unique identifier.
            #  
            #  An Email represents a communication sent from one company to another.  The creator of the email is identified by the `CompanyId` field, recipient(s) by the `EmailTo` field, and cc recipient(s) by the 'EmailCC' field. The Email Model represents an email and a number of different metadata attributes related to the creation, storage, and ownership of the email.
            #  
            #  @param id [uuid] The unique Lockstep Platform ID number of the Email to delete
            def delete_email()
                path = "/api/v1/Emails/#{id}"
                send_request(:delete, path, nil, nil)
            end

            #  Retrieves a signature logo for the email with the specified identifier and increments 'ViewCount'.
            #  
            #  An Email represents a communication sent from one company to another.  The creator of the email is identified by the `CompanyId` field, recipient(s) by the `EmailTo` field, and cc recipient(s) by the 'EmailCC' field. The Email Model represents an email and a number of different metadata attributes related to the creation, storage, and ownership of the email.
            #  @param emailId [uuid] The unique ID number of the Email to retrieve.
            #  @param nonce [uuid] The random nonce applied at time of url creation.
            def retrieve_email_logo()
                path = "/api/v1/Emails/#{emailId}/logo/#{nonce}"
                send_request(:get, path, nil, nil)
            end

            #  Creates one or more emails from the specified array of Email Models
            #  
            #  An Email represents a communication sent from one company to another.  The creator of the email is identified by the `CompanyId` field, recipient(s) by the `EmailTo` field, and cc recipient(s) by the 'EmailCC' field. The Email Model represents an email and a number of different metadata attributes related to the creation, storage, and ownership of the email.
            #  
            #  @param body [EmailModel] The array of emails to be created
            def create_emails()
                path = "/api/v1/Emails"
                send_request(:post, path, body, nil)
            end

            #  Queries Emails on the Lockstep Platform using the specified filtering, sorting, nested fetch, and pagination rules requested.
            #  
            #  More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
            #  
            #  An Email represents a communication sent from one company to another.  The creator of the email is identified by the `CompanyId` field, recipient(s) by the `EmailTo` field, and cc recipient(s) by the 'EmailCC' field. The Email Model represents an email and a number of different metadata attributes related to the creation, storage, and ownership of the email.
            #  
            #  @param filter [string] The filter to use to select from the list of available applications, in the [Searchlight query syntax](https://github.com/tspence/csharp-searchlight).
            #  @param include [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: Attachments, CustomFields, Notes
            #  @param order [string] The sort order for the results, in the [Searchlight order syntax](https://github.com/tspence/csharp-searchlight).
            #  @param pageSize [int32] The page size for results (default 200). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
            #  @param pageNumber [int32] The page number for results (default 0). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
            def query_emails(filter, include, order, pageSize, pageNumber)
                path = "/api/v1/Emails/query"
                send_request(:get, path, nil, {filter, include, order, pageSize, pageNumber})
            end
        end
    end
end
