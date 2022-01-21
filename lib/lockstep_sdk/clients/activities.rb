#
# Lockstep Software Development Kit for Ruby
#
# (c) 2021-2022 Lockstep, Inc.
#
# For the full copyright and license information, please view the LICENSE
# file that was distributed with this source code.
#
# @author     Ted Spence <tspence@lockstep.io>
# @author     Manish Narayanan <manish.n@lockstep.io>
# @author     Rishi Rajkumar Jawahar <rjawahar@lockstep.io>
# @copyright  2021-2022 Lockstep, Inc.
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#
require 'awrence'

class ActivitiesClient

    # Initialize the ActivitiesClient class with a lockstepsdk instance.
    # @param lockstepsdk [LockstepApi] The Lockstep API client object for this connection
    def initialize(lockstepsdk)
        @lockstepsdk = lockstepsdk
    end


    # Retrieves the Activity specified by this unique identifier, optionally including nested data sets.
    # 
    # An Activity contains information about work being done on a specific accounting task. You can use Activities to track information about who has been assigned a specific task, the current status of the task, the name and description given for the particular task, the priority of the task, and any amounts collected, paid, or credited for the task.
    # 
    # @param id [uuid] The unique Lockstep Platform ID number of this Activity
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: Company, Attachments, CustomFields, Notes, References, and UserAssignedToName
    def retrieve_activity(id:, include_param:)
        path = "/api/v1/Activities/#{id}"
        params = {:include => include_param}
        @lockstepsdk.request(:get, path, nil, params)
    end

    # Updates an activity that matches the specified id with the requested information.
    # 
    # The PATCH method allows you to change specific values on the object while leaving other values alone.  As input you should supply a list of field names and new values.  If you do not provide the name of a field, that field will remain unchanged.  This allows you to ensure that you are only updating the specific fields desired.
    # 
    # An Activity contains information about work being done on a specific accounting task. You can use Activities to track information about who has been assigned a specific task, the current status of the task, the name and description given for the particular task, the priority of the task, and any amounts collected, paid, or credited for the task.
    # 
    # @param id [uuid] The unique Lockstep Platform ID number of the Activity to update
    # @param body [object] A list of changes to apply to this Activity
    def update_activity(id:, body:)
        path = "/api/v1/Activities/#{id}"
        params = {}
        @lockstepsdk.request(:patch, path, body.to_camelback_keys.to_json, params)
    end

    # Delete the Activity referred to by this unique identifier.
    # 
    # An Activity contains information about work being done on a specific accounting task. You can use Activities to track information about who has been assigned a specific task, the current status of the task, the name and description given for the particular task, the priority of the task, and any amounts collected, paid, or credited for the task.
    # 
    # @param id [uuid] The unique Lockstep Platform ID number of the Activity to delete
    def delete_activity(id:)
        path = "/api/v1/Activities/#{id}"
        params = {}
        @lockstepsdk.request(:delete, path, nil, params)
    end

    # Creates one or more activities from a given model.
    # 
    # An Activity contains information about work being done on a specific accounting task. You can use Activities to track information about who has been assigned a specific task, the current status of the task, the name and description given for the particular task, the priority of the task, and any amounts collected, paid, or credited for the task.
    # 
    # @param body [ActivityModel] The Activities to create
    def create_activities(body:)
        path = "/api/v1/Activities"
        @lockstepsdk.request(:post, path, body, nil)
    end

    # Queries Activities for this account using the specified filtering, sorting, nested fetch, and pagination rules requested.
    # 
    # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
    # 
    # An Activity contains information about work being done on a specific accounting task. You can use Activities to track information about who has been assigned a specific task, the current status of the task, the name and description given for the particular task, the priority of the task, and any amounts collected, paid, or credited for the task.
    # 
    # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param include_param [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: Company, Attachments, CustomFields, Notes, References, and UserAssignedToName
    # @param order [string] The sort order for this query. See See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param pageSize [int32] The page size for results (default 200). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    # @param pageNumber [int32] The page number for results (default 0). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
    def query_activities(filter:, include_param:, order:, pageSize:, pageNumber:)
        path = "/api/v1/Activities/query"
        params = {:filter => filter, :include => include_param, :order => order, :pageSize => pageSize, :pageNumber => pageNumber}
        @lockstepsdk.request(:get, path, nil, params)
    end

    # Retrieves a list of items representing the activity stream for the supplied activity id.
    # 
    # An Activity contains information about work being done on a specific accounting task. You can use Activities to track information about who has been assigned a specific task, the current status of the task, the name and description given for the particular task, the priority of the task, and any amounts collected, paid, or credited for the task.
    # 
    # @param id [uuid] The unique Lockstep Platform ID number of this Activity
    def retrieve_activity_stream(id:)
        path = "/api/v1/Activities/#{id}/stream"
        params = {}
        @lockstepsdk.request(:get, path, nil, params)
    end

    # Forwards an activity by creating a new activity with all child references and assigning the new activity to a new user.
    # 
    # An Activity contains information about work being done on a specific accounting task. You can use Activities to track information about who has been assigned a specific task, the current status of the task, the name and description given for the particular task, the priority of the task, and any amounts collected, paid, or credited for the task.
    # 
    # @param activityId [uuid] 
    # @param userId [uuid] 
    def forward_activity(activityId:, userId:)
        path = "/api/v1/Activities/#{activityId}/forward/#{userId}"
        params = {}
        @lockstepsdk.request(:post, path, nil, params)
    end
end
