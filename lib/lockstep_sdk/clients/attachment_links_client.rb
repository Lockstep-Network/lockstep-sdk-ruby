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


require 'awrence'

class AttachmentLinksClient

    ##
    # Initialize the AttachmentLinksClient class with an API client instance.
    # @param connection [LockstepApi] The API client object for this connection
    def initialize(connection)
        @connection = connection
    end


    ##
    # Retrieves the Attachment Link with the provided Attachment Link identifier.
    #
    # An Attachment Link is a link that associates one Attachment with one object within Lockstep.
    #
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    #
    # @param attachment_id [uuid] 
    # @param object_key [uuid] 
    # @param table_name [string] 
    def retrieve_attachment_link(attachment_id:, object_key:, table_name:)
        path = "/api/v1/AttachmentLinks"
        params = {:attachmentId => attachment_id, :objectKey => object_key, :tableName => table_name}
        @connection.request(:get, path, nil, params)
    end

    ##
    # Creates one Attachment Link from the provided arguments.
    #
    # An Attachment Link is a link that associates one Attachment with one object within Lockstep.
    #
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    #
    # @param body [AttachmentLinkModel] 
    def upload_attachment(body:)
        path = "/api/v1/AttachmentLinks"
        @connection.request(:post, path, body, nil)
    end

    ##
    # Delete the specified link between an object and its attachment.
    #
    # An Attachment Link is a link that associates one Attachment with one object within Lockstep.
    #
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    #
    # @param attachment_id [uuid] 
    # @param object_key [uuid] 
    # @param table_name [string] 
    def delete_attachment_link(attachment_id:, object_key:, table_name:)
        path = "/api/v1/AttachmentLinks"
        params = {:attachmentId => attachment_id, :objectKey => object_key, :tableName => table_name}
        @connection.request(:delete, path, nil, params)
    end

    ##
    # Queries Attachment Links for this account using the specified filtering, sorting, nested fetch, and pagination rules requested.
    #
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
    #
    # An Attachment Link is a link that associates one Attachment with one object within Lockstep.
    #
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    #
    # @param filter [string] The filter to use to select from the list of available Attachments, in the [Searchlight query syntax](https://github.com/tspence/csharp-searchlight).
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. No collections are currently available for querying but may be available in the future.
    # @param order [string] The sort order for the results, in the [Searchlight order syntax](https://github.com/tspence/csharp-searchlight).
    # @param page_size [int32] The page size for results (default 250, maximum of 500)
    # @param page_number [int32] The page number for results (default 0)
    def query_attachment_links(filter:, include_param:, order:, page_size:, page_number:)
        path = "/api/v1/AttachmentLinks/query"
        params = {:filter => filter, :include => include_param, :order => order, :pageSize => page_size, :pageNumber => page_number}
        @connection.request(:get, path, nil, params)
    end
end
