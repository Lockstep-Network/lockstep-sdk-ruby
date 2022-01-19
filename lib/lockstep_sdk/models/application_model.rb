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

    # An Application represents a feature available to customers within the Lockstep Platform.  You can create
    # Applications by working with your Lockstep business development manager and publish them on the platform
    # so that customers can browse and find your Application on the Lockstep Platform Marketplace.  When a
    # customer adds an Application to their account, they obtain an AppEnrollment which represents that customer's
    # instance of this Application.  The customer-specific AppEnrollment contains a customer's configuration data
    # for the Application, which is not customer-specific.
    # 
    # See [Applications and Enrollments](https://developer.lockstep.io/docs/applications-and-enrollments) for more information.
    # --swaggerCategory:Platform
    class applicationModel
        # @return [uuid] A unique code identifying this application
        attr_accessor :app_id
        # @return [string] The name of this application
        attr_accessor :name
        # @return [string] Brief summary of this application shown as a subtitle
        attr_accessor :description
        # @return [string] Tag for what type of app this is
        attr_accessor :app_type
        # @return [uuid] The ID of the owner
        attr_accessor :owner_id
        # @return [uri] The URL to visit for more information about this application
        attr_accessor :project_url
        # @return [uri] The URL for the icon for this application
        attr_accessor :icon_url
        # @return [string] The description of the price for this application
        attr_accessor :price_terms
        # @return [uuid] The ID of the user who created this application
        attr_accessor :created_user_id
        # @return [uuid] The ID of the user who last modified this application
        attr_accessor :modified_user_id
        # @return [date-time] The date this application was created
        attr_accessor :created
        # @return [date-time] The date this application was last modified
        attr_accessor :modified
        # @return [boolean] Flag indicating if the application is active.
        attr_accessor :is_active
        # @return [uri] URL to the Wiki for the Application
        attr_accessor :wiki_url
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [noteModel] All notes attached to this app. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes
        # @return [attachmentModel] All attachments attached to this app. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments
        # @return [customFieldDefinitionModel] All definitions attached to the application. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_definitions
        # @return [customFieldValueModel] All values attached to the application. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_values
    end
end
