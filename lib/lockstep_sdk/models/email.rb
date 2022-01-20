#  An Email represents a communication sent from one company to another.  The creator of the email is identified
#  by the `CompanyId` field, recipient(s) by the `EmailTo` field, and cc recipient(s) by the 'EmailCC' field.
#  The Email Model represents an email and a number of different metadata attributes related to the creation,
#  storage, and ownership of the email.

require 'json'

class Email 

    attr_accessor :thread_id, :company_id, :email_from, :email_to, :email_cc, :email_subject , :email_body, \
                  :sent_date, :is_unread, :is_priority, :is_spam, :to_be_sent, :customer_id, \
                  :received_time_stamp, :opened_time_stamp, :view_count, :external_email_id, :external_thread_id, \
                  :email_bcc, :send_type, :response_origin_id, :response_origin

    def initialize(params = {})

        @thread_id = params.fetch(:thread_id) # The unique ID number of this email's conversation thread.
        @company_id = params.fetch(:company_id) # The ID number of the company that created this email.
        @email_from = params.fetch(:email_from) # The email address for the sender of this email.
        @email_to = params.fetch(:email_to) # The email address for the recipient(s) of this email.
        @email_cc = params.fetch(:email_cc) # The email address for the CC recipient(s) of this email
        @email_subject = params.fetch(:email_subject) # The subject line of this email.
        @email_body = params.fetch(:email_body) # The body content of this email.
        @sent_date = params.fetch(:sent_date) # The date on which this email was sent.
        @is_unread = params.fetch(:is_unread) # A status flag indicating if this email is unread.
        @is_priority = params.fetch(:is_priority) # A status flag indicating if this email is priority status.
        @is_spam = params.fetch(:is_spam) # A status flag indicating if this email is marked as spam.
        @to_be_sent = params.fetch(:to_be_sent) # A status flag indicating if this email is to be sent.
        @customer_id = params.fetch(:customer_id) # The ID number of the customer that sent this email.
        @received_time_stamp = params.fetch(:received_time_stamp) # The date on which this email was received.
        @opened_time_stamp = params.fetch(:opened_time_stamp) # The date on which this email was opened.
        @view_count = params.fetch(:view_count) # The number of times this email was viewed.
        @external_email_id = params.fetch(:external_email_id) # The id of the email in an external system if imported.
        @external_thread_id = params.fetch(:external_thread_id) # The id of the email thread in an external system if imported.
        @email_bcc = params.fetch(:email_bcc) # The email address(es) for the BCC recipient(s) of this email
        @send_type = params.fetch(:send_type)
        @response_origin_id = params.fetch(:response_origin_id)
        @response_origin = params.fetch(:response_origin)
    
    end

    def as_json(options={})
        {
            'threadId' => @thread_id,
            'companyId' => @company_id,
            'isArchived' => @is_archived,
            'emailFrom' => @email_from,
            'emailTo' => @email_to,
            'emailCC' => @email_cc,
            'emailSubject' => @email_subject,
            'emailBody' => @email_body,
            'sentDate' => @sent_date,
            'isUnread' => @is_unread,
            'isPriority' => @is_priority,
            'isSpam' => @is_spam,
            'toBeSent' => @to_be_sent,
            'customerId' => @customer_id,
            'receivedTimeStamp' => @received_time_stamp,
            'openedTimestamp' => @opened_time_stamp,
            'viewCount' => @view_count,
            'externalEmailId' => @external_email_id,
            'externalThreadId' => @external_thread_id,
            'emailBcc' => @email_bcc,
            'sendType' => @send_type,
            'responseOriginId' => @response_origin_id,
            'responseOrigin' => @response_origin
        }
    end

    def to_json(*options)
        as_json(*options).to_json(*options)
    end

end