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

    # An Email represents a communication sent from one company to another.  The creator of the email is identified
    # by the `CompanyId` field, recipient(s) by the `EmailTo` field, and cc recipient(s) by the 'EmailCC' field.
    # The Email Model represents an email and a number of different metadata attributes related to the creation,
    # storage, and ownership of the email.
    class EmailModel

        # Initialize the EmailModel using the provided prototype
        def initialize(params = {})
            @email_id = params.fetch(:email_id)
            @thread_id = params.fetch(:thread_id)
            @group_key = params.fetch(:group_key)
            @company_id = params.fetch(:company_id)
            @email_from = params.fetch(:email_from)
            @email_to = params.fetch(:email_to)
            @email_cc = params.fetch(:email_cc)
            @email_subject = params.fetch(:email_subject)
            @email_body = params.fetch(:email_body)
            @sent_date = params.fetch(:sent_date)
            @is_unread = params.fetch(:is_unread)
            @is_priority = params.fetch(:is_priority)
            @is_spam = params.fetch(:is_spam)
            @created = params.fetch(:created)
            @created_user_id = params.fetch(:created_user_id)
            @to_be_sent = params.fetch(:to_be_sent)
            @customer_id = params.fetch(:customer_id)
            @received_time_stamp = params.fetch(:received_time_stamp)
            @opened_timestamp = params.fetch(:opened_timestamp)
            @view_count = params.fetch(:view_count)
            @app_enrollment_id = params.fetch(:app_enrollment_id)
            @external_email_id = params.fetch(:external_email_id)
            @external_thread_id = params.fetch(:external_thread_id)
            @email_bcc = params.fetch(:email_bcc)
            @send_type = params.fetch(:send_type)
            @modified = params.fetch(:modified)
            @modified_user_id = params.fetch(:modified_user_id)
            @response_origin_id = params.fetch(:response_origin_id)
            @response_origin = params.fetch(:response_origin)
            @notes = params.fetch(:notes)
            @attachments = params.fetch(:attachments)
            @custom_field_definitions = params.fetch(:custom_field_definitions)
            @custom_field_values = params.fetch(:custom_field_values)
        end

        # @return [Uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :email_id
        # @return [Uuid] The unique ID number of this email's conversation thread.
        attr_accessor :thread_id
        # @return [Uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [Uuid] The ID number of the company that created this email.
        attr_accessor :company_id
        # @return [String] The email address for the sender of this email.
        attr_accessor :email_from
        # @return [String] The email address for the recipient(s) of this email.
        attr_accessor :email_to
        # @return [String] The email address for the CC recipient(s) of this email
        attr_accessor :email_cc
        # @return [String] The subject line of this email.
        attr_accessor :email_subject
        # @return [String] The body content of this email.
        attr_accessor :email_body
        # @return [Date-time] The date on which this email was sent.
        attr_accessor :sent_date
        # @return [Boolean] A status flag indicating if this email is unread.
        attr_accessor :is_unread
        # @return [Boolean] A status flag indicating if this email is priority status.
        attr_accessor :is_priority
        # @return [Boolean] A status flag indicating if this email is marked as spam.
        attr_accessor :is_spam
        # @return [Date-time] The date on which this email was created.
        attr_accessor :created
        # @return [Uuid] The ID number of the user who created this email.
        attr_accessor :created_user_id
        # @return [Boolean] A status flag indicating if this email is to be sent.
        attr_accessor :to_be_sent
        # @return [Uuid] The ID number of the customer that sent this email.
        attr_accessor :customer_id
        # @return [Date-time] The date on which this email was received.
        attr_accessor :received_time_stamp
        # @return [Date-time] The date on which this email was opened.
        attr_accessor :opened_timestamp
        # @return [Int32] The number of times this email was viewed.
        attr_accessor :view_count
        # @return [Uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :app_enrollment_id
        # @return [String] The id of the email in an external system if imported.
        attr_accessor :external_email_id
        # @return [String] The id of the email thread in an external system if imported.
        attr_accessor :external_thread_id
        # @return [String] The email address(es) for the BCC recipient(s) of this email
        attr_accessor :email_bcc
        # @return [String] The type message being sent (New, Reply, Forward) or null for messages not being sent.
        attr_accessor :send_type
        # @return [Date-time] The date on which this email was modified. Email modification should only be done by internal services.
        attr_accessor :modified
        # @return [Uuid] The ID of the user who modified this email. Email modification should only be done by internal services.
        attr_accessor :modified_user_id
        # @return [Uuid] If the message being sent is a reply or a forward, the id of the the email being replied to or forwarded. Otherwise null.
        attr_accessor :response_origin_id
        # @return [EmailModel] The email object associated with the response origin id.
        attr_accessor :response_origin
        # @return [NoteModel] All notes attached to this email. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes
        # @return [AttachmentModel] All attachments attached to this email. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments
        # @return [CustomFieldDefinitionModel] All definitions attached to this email. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_definitions
        # @return [CustomFieldValueModel] All values attached to this email. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :custom_field_values
    end
end
