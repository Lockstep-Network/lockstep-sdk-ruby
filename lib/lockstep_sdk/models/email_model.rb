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
    class emailModel
        # @return [uuid] The unique ID of this record, automatically assigned by Lockstep when this record is added to the Lockstep platform.
        attr_accessor :email_id
        # @return [uuid] The unique ID number of this email's conversation thread.
        attr_accessor :thread_id
        # @return [uuid] The GroupKey uniquely identifies a single Lockstep Platform account. All records for this account will share the same GroupKey value. GroupKey values cannot be changed once created. For more information, see [Accounts and GroupKeys](https://developer.lockstep.io/docs/accounts-and-groupkeys).
        attr_accessor :group_key
        # @return [uuid] The ID number of the company that created this email.
        attr_accessor :company_id
        # @return [string] The email address for the sender of this email.
        attr_accessor :email_from
        # @return [string] The email address for the recipient(s) of this email.
        attr_accessor :email_to
        # @return [string] The email address for the CC recipient(s) of this email
        attr_accessor :email_cc
        # @return [string] The subject line of this email.
        attr_accessor :email_subject
        # @return [string] The body content of this email.
        attr_accessor :email_body
        # @return [date-time] The date on which this email was sent.
        attr_accessor :sent_date
        # @return [boolean] A status flag indicating if this email is unread.
        attr_accessor :is_unread
        # @return [boolean] A status flag indicating if this email is priority status.
        attr_accessor :is_priority
        # @return [boolean] A status flag indicating if this email is marked as spam.
        attr_accessor :is_spam
        # @return [date-time] The date on which this email was created.
        attr_accessor :created
        # @return [uuid] The ID number of the user who created this email.
        attr_accessor :created_user_id
        # @return [boolean] A status flag indicating if this email is to be sent.
        attr_accessor :to_be_sent
        # @return [uuid] The ID number of the customer that sent this email.
        attr_accessor :customer_id
        # @return [date-time] The date on which this email was received.
        attr_accessor :received_time_stamp
        # @return [date-time] The date on which this email was opened.
        attr_accessor :opened_timestamp
        # @return [int32] The number of times this email was viewed.
        attr_accessor :view_count
        # @return [uuid] AppEnrollmentId for this record; used for mapping purposes.
        attr_accessor :app_enrollment_id
        # @return [string] The id of the email in an external system if imported.
        attr_accessor :external_email_id
        # @return [string] The id of the email thread in an external system if imported.
        attr_accessor :external_thread_id
        # @return [string] The email address(es) for the BCC recipient(s) of this email
        attr_accessor :email_bcc
        # @return [string] The type message being sent (New, Reply, Forward) or null for messages not being sent.
        attr_accessor :send_type
        # @return [date-time] The date on which this email was modified. Email modification should only be done by internal services.
        attr_accessor :modified
        # @return [uuid] The ID of the user who modified this email. Email modification should only be done by internal services.
        attr_accessor :modified_user_id
        # @return [uuid] If the message being sent is a reply or a forward, the id of the the email being replied to or forwarded. Otherwise null.
        attr_accessor :response_origin_id
        # @return [emailModel] The email object associated with the response origin id.
        attr_accessor :response_origin
        # @return [noteModel] All notes attached to this email. To retrieve this collection, specify `Notes` in the "Include" parameter for your query.
        attr_accessor :notes
        # @return [attachmentModel] All attachments attached to this email. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :attachments
        # @return [customFieldDefinitionModel] All definitions attached to this email. To retrieve this collection, specify `CustomFieldValues` in the "Include" parameter for your query.
        attr_accessor :custom_field_definitions
        # @return [customFieldValueModel] All values attached to this email. To retrieve this collection, specify `Attachments` in the "Include" parameter for your query.
        attr_accessor :custom_field_values
    end
end
