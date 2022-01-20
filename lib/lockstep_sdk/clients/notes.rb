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


class Notes

    def initialize(lockstepsdk) # Initialize the Activities class with a lockstepsdk instance.
        @lockstepsdk = lockstepsdk
    end

    #  Retrieves the note with the specified note identifier.  A note is a customizable text string that can be attached to various account attributes within Lockstep. You can use notes for internal communication, correspondence with clients, or personal reminders. The Note Model represents a note and a number of different metadata attributes related to the creation, storage, and ownership of the note.
    #  
    #  See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    #  
    #  @param id [uuid] The unique ID number of the Note to retrieve
    #  @param include [string] To fetch additional data on this object, specify the list of elements to retrieve. No collections are currently available but may be offered in the future
    def retrieve_note(include_param)
        path = "/api/v1/Notes/#{id}"
        params = {:include => include_param}
        @lockstepsdk.request(:get, path, nil, params)
    end

    #  Archives the Note with the unique ID specified.  A note is a customizable text string that can be attached to various account attributes within Lockstep. You can use notes for internal communication, correspondence with clients, or personal reminders. The Note Model represents a note and a number of different metadata attributes related to the creation, storage, and ownership of the note.
    #  
    #  See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    #  
    #  @param id [uuid] Note id to be archived
    def archive_note()
        path = "/api/v1/Notes/#{id}"
        @lockstepsdk.request(:delete, path, nil, nil)
    end

    #  Creates one or more notes from the specified array of Note Models
    #  
    #  A note is a customizable text string that can be attached to various account attributes within Lockstep. You can use notes for internal communication, correspondence with clients, or personal reminders. The Note Model represents a note and a number of different metadata attributes related to the creation, storage, and ownership of the note.
    #  
    #  See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    #  
    #  @param body [NoteModel] The array of notes to be created
    def create_notes()
        path = "/api/v1/Notes"
        @lockstepsdk.request(:post, path, body, nil)
    end

    #  Queries Notes on the Lockstep Platform using the specified filtering, sorting, nested fetch, and pagination rules requested.
    #  
    #  More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.  A note is a customizable text string that can be attached to various account attributes within Lockstep. You can use notes for internal communication, correspondence with clients, or personal reminders. The Note Model represents a note and a number of different metadata attributes related to the creation, storage, and ownership of the note.
    #  
    #  See [Extensibility](https://developer.lockstep.io/docs/extensibility) for more information.
    #  
    #  @param filter [string] The filter to use to select from the list of available applications, in the [Searchlight query syntax](https://github.com/tspence/csharp-searchlight).
    #  @param include [string] To fetch additional data on this object, specify the list of elements to retrieve. No collections are currently available but may be offered in the future
    #  @param order [string] The sort order for the results, in the [Searchlight order syntax](https://github.com/tspence/csharp-searchlight).
    #  @param pageSize [int32] The page size for results (default 200, maximum of 10,000)
    #  @param pageNumber [int32] The page number for results (default 0)
    def query_notes(filter, include_param, order, pageSize, pageNumber)
        path = "/api/v1/Notes/query"
        params = {:filter => filter, :include => include_param, :order => order, :pageSize => pageSize, :pageNumber => pageNumber}
        @lockstepsdk.request(:get, path, nil, params)
    end
end
