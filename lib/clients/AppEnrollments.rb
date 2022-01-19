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
# @version    2022.3
# @link       https://github.com/Lockstep-Network/lockstep-sdk-ruby
#


module LockstepSdk
    class Client
        module AppEnrollments

            # Retrieves the App Enrollment with this identifier.
            # 
            # An App Enrollment represents an app that has been enrolled to the current account.  When you sign up for an app using the Lockstep Platform, you obtain an enrollment record for that app.  Example types of apps include connectors and feature enhancement apps. The App Enrollment object contains information about this app, its configuration, and settings.
            # 
            # See [Applications and Enrollments](https://developer.lockstep.io/docs/applications-and-enrollments) for more information.
            # 
            # @param id [uuid] The unique ID number of the App Enrollment to retrieve
            # @param include [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: App, CustomFields, LastSync, LastSuccessfulSync
            def retrieve_app_enrollment(include)
                path = "/api/v1/AppEnrollments/#{id}"
                send_request(:get, path, nil, {include})
            end

            # Updates an existing App Enrollment with the information supplied to this PATCH call.
            # 
            # The PATCH method allows you to change specific values on the object while leaving other values alone.  As input you should supply a list of field names and new values.  For example, you can provide the field name "IsActive" and specify the new value "False"; this API will then change the value of IsActive to false.
            # 
            # An App Enrollment represents an app that has been enrolled to the current account.  When you sign up for an app using the Lockstep Platform, you obtain an enrollment record for that app.  Example types of apps include connectors and feature enhancement apps. The App Enrollment object contains information about this app, its configuration, and settings.
            # 
            # See [Applications and Enrollments](https://developer.lockstep.io/docs/applications-and-enrollments) for more information.
            # 
            # @param id [uuid] The unique ID number of the App Enrollment to update
            # @param body [object] A list of changes to apply to this App Enrollment
            def update_app_enrollment()
                path = "/api/v1/AppEnrollments/#{id}"
                send_request(:patch, path, body, nil)
            end

            # Deletes the App Enrollment referred to by this unique identifier. An App Enrollment represents an app that has been enrolled to the current account.  When you sign up for an app using the Lockstep Platform, you obtain an enrollment record for that app.  Example types of apps include connectors and feature enhancement apps. The App Enrollment object contains information about this app, its configuration, and settings.
            # 
            # See [Applications and Enrollments](https://developer.lockstep.io/docs/applications-and-enrollments) for more information.
            # 
            # @param id [uuid] The unique ID number of the App Enrollment to delete
            # @param removeEnrollmentData [boolean] Option to remove all associated app enrollment data when deleting app enrollment (default false)
            def delete_app_enrollment(removeEnrollmentData)
                path = "/api/v1/AppEnrollments/#{id}"
                send_request(:delete, path, nil, {removeEnrollmentData})
            end

            # Creates one or more App Enrollments within this account and returns the records as created.
            # 
            # An App Enrollment represents an app that has been enrolled to the current account.  When you sign up for an app using the Lockstep Platform, you obtain an enrollment record for that app.  Example types of apps include connectors and feature enhancement apps. The App Enrollment object contains information about this app, its configuration, and settings.
            # 
            # See [Applications and Enrollments](https://developer.lockstep.io/docs/applications-and-enrollments) for more information.
            # 
            # @param body [AppEnrollmentModel] The App Enrollments to create
            def create_app_enrollments()
                path = "/api/v1/AppEnrollments"
                send_request(:post, path, body, nil)
            end

            # Queries App Enrollments for this account using the specified filtering, sorting, nested fetch, and pagination rules requested.
            # 
            # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
            # 
            # An App Enrollment represents an app that has been enrolled to the current account.  When you sign up for an app using the Lockstep Platform, you obtain an enrollment record for that app.  Example types of apps include connectors and feature enhancement apps. The App Enrollment object contains information about this app, its configuration, and settings.
            # 
            # See [Applications and Enrollments](https://developer.lockstep.io/docs/applications-and-enrollments) for more information.
            # 
            # @param filter [string] The filter for this query. See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
            # @param include [string] To fetch additional data on this object, specify the list of elements to retrieve. Available collections: App, CustomFields, LastSync, LastSuccessfulSync
            # @param order [string] The sort order for this query. See See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
            # @param pageSize [int32] The page size for results (default 200). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
            # @param pageNumber [int32] The page number for results (default 0). See [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight)
            def query_app_enrollments(filter, include, order, pageSize, pageNumber)
                path = "/api/v1/AppEnrollments/query"
                send_request(:get, path, nil, {filter, include, order, pageSize, pageNumber})
            end

            # Queries custom fields settings for app enrollment within the Lockstep platform using the specified filtering, sorting, nested fetch, and pagination rules requested.
            # 
            # More information on querying can be found on the [Searchlight Query Language](https://developer.lockstep.io/docs/querying-with-searchlight) page on the Lockstep Developer website.
            # 
            # An App Enrollment represents an app that has been enrolled to the current account.  When you sign up for an app using the Lockstep Platform, you obtain an enrollment record for that app.  Example types of apps include connectors and feature enhancement apps. The App Enrollment object contains information about this app, its configuration, and settings.
            # 
            # See [Applications and Enrollments](https://developer.lockstep.io/docs/applications-and-enrollments) for more information.
            # 
            # @param id [uuid] The unique ID number of the App Enrollment for which we retrieve custom fields
            def query_enrollment_fields()
                path = "/api/v1/AppEnrollments/settings/#{id}"
                send_request(:get, path, nil, nil)
            end
        end
    end
end
