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

class NotesClient

    ##
    # Initialize the NotesClient class with an API client instance.
    # @param connection [LockstepApi] The API client object for this connection
    def initialize(connection)
        @connection = connection
    end


    ##
    # Retrieves the note with the specified note identifier.
    #
    # A note is a customizable text string that can be attached to various account attributes within Lockstep. You can use notes for internal communication, correspondence with clients, or personal reminders. The Note Model represents a note and a number of different metadata attributes related to the creation, storage, and ownership of the note.
    #
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    #
    # @param id [uuid] The unique ID number of the Note to retrieve
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. No collections are currently available but may be offered in the future
    def retrieve_note(id:, include_param:)
        path = "/api/v1/Notes/#{id}"
        params = {:include => include_param}
        @connection.request(:get, path, nil, params)
    end

    ##
    # Updates the Note with the unique ID specified.
    #
    # A note is a customizable text string that can be attached to various account attributes within Lockstep. You can use notes for internal communication, correspondence with clients, or personal reminders. The Note Model represents a note and a number of different metadata attributes related to the creation, storage, and ownership of the note.
    #
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    #
    # @param id [uuid] Note id to be updated
    # @param body [object] A list of changes to apply to this Note
    def update_note(id:, body:)
        path = "/api/v1/Notes/#{id}"
        @connection.request(:patch, path, body.to_camelback_keys.to_json, nil)
    end

    ##
    # Archives the Note with the unique ID specified.
    #
    # A note is a customizable text string that can be attached to various account attributes within Lockstep. You can use notes for internal communication, correspondence with clients, or personal reminders. The Note Model represents a note and a number of different metadata attributes related to the creation, storage, and ownership of the note.
    #
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    #
    # @param id [uuid] Note id to be archived
    def archive_note(id:)
        path = "/api/v1/Notes/#{id}"
        @connection.request(:delete, path, nil, nil)
    end

    ##
    # Creates one or more notes from the specified array of Note Models
    #
    # A note is a customizable text string that can be attached to various account attributes within Lockstep. You can use notes for internal communication, correspondence with clients, or personal reminders. The Note Model represents a note and a number of different metadata attributes related to the creation, storage, and ownership of the note.
    #
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    #
    # @param body [NoteModel] The array of notes to be created
    def create_notes(body:)
        path = "/api/v1/Notes"
        @connection.request(:post, path, body, nil)
    end

    ##
    # Queries Notes on the Lockstep Platform using the specified filtering, sorting, nested fetch, and pagination rules requested.
    #
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
    #
    # A note is a customizable text string that can be attached to various account attributes within Lockstep. You can use notes for internal communication, correspondence with clients, or personal reminders. The Note Model represents a note and a number of different metadata attributes related to the creation, storage, and ownership of the note.
    #
    # See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    #
    # @param filter [string] The filter to use to select from the list of available applications, in the [Searchlight query syntax](https://github.com/tspence/csharp-searchlight).
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. No collections are currently available but may be offered in the future
    # @param order [string] The sort order for the results, in the [Searchlight order syntax](https://github.com/tspence/csharp-searchlight).
    # @param page_size [int32] The page size for results (default 250, maximum of 500)
    # @param page_number [int32] The page number for results (default 0)
    def query_notes(filter:, include_param:, order:, page_size:, page_number:)
        path = "/api/v1/Notes/query"
        params = {:filter => filter, :include => include_param, :order => order, :pageSize => page_size, :pageNumber => page_number}
        @connection.request(:get, path, nil, params)
    end
end
