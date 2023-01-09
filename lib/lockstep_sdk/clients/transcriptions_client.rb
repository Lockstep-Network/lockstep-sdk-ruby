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

class TranscriptionsClient

    ##
    # Initialize the TranscriptionsClient class with an API client instance.
    # @param connection [LockstepApi] The API client object for this connection
    def initialize(connection)
        @connection = connection
    end


    ##
    # Retrieves the Transcription Validation Request specified by this unique identifier, optionally including nested data sets.
    #
    # A Transcription Validation Request represents a collection of files sent from the client to verify the file type using the machine learning platform Sage AI.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of the transcription validation request
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: Items
    def retrieve_transcription_validation_request(id:, include_param:)
        path = "/api/v1/Transcriptions/validate/#{id}"
        params = {:include => include_param}
        @connection.request(:get, path, nil, params)
    end

    ##
    # Updates an existing Transcription Validation Request with the information supplied to this PATCH call.
    #
    # The PATCH method allows you to change specific values on the object while leaving other values alone.  As input you should supply a list of field names and new values.  If you do not provide the name of a field, that field will remain unchanged.  This allows you to ensure that you are only updating the specific fields desired.
    #
    # A Transcription Validation Request represents a collection of files sent from the client to verify the file type using the machine learning platform Sage AI.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of the Transcription Validation Request to update
    # @param body [object] A list of changes to apply to this Transcription Validation Request
    def update_transcription_validation_request(id:, body:)
        path = "/api/v1/Transcriptions/validate/#{id}"
        @connection.request(:patch, path, body.to_camelback_keys.to_json, nil)
    end

    ##
    # Deletes the Transcription Validation Request and all associated items referred to by this unique identifier.
    #
    # A Transcription Validation Request represents a collection of files sent from the client to verify the file type using the machine learning platform Sage AI.
    #
    # @param id [uuid] The unique Lockstep Platform ID number of the transcription validation request to delete
    def delete_transcription_validation_request(id:)
        path = "/api/v1/Transcriptions/validate/#{id}"
        @connection.request(:delete, path, nil, nil)
    end

    ##
    # Creates one Transcription Validation Request with all the associated request items within this account and returns the record as created.
    #
    # A Transcription Validation Request represents a collection of files sent from the client to verify the file type using the machine learning platform Sage AI.
    #
    # @param body [TranscriptionRequestSubmit] The files which will be verified
    def create_transcription_validation_request(body:)
        path = "/api/v1/Transcriptions/validate"
        @connection.request(:post, path, body, nil)
    end

    ##
    # Queries transcription validation requests transactions for this account using the specified filtering, sorting, nested fetch, and pagination rules requested.
    #
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
    #
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: Items
    # @param order [string] The sort order for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_size [int32] The page size for results (default 250, maximum of 500). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param page_number [int32] The page number for results (default 0). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    def query_transcription_validation_requests(filter:, include_param:, order:, page_size:, page_number:)
        path = "/api/v1/Transcriptions/validate/query"
        params = {:filter => filter, :include => include_param, :order => order, :pageSize => page_size, :pageNumber => page_number}
        @connection.request(:get, path, nil, params)
    end
end
