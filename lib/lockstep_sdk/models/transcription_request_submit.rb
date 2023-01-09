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


require 'json'

module LockstepSdk

    ##
    # A request to transcribe the provided file content to a Lockstep Platform object.
    class TranscriptionRequestSubmit

        ##
        # Initialize the TranscriptionRequestSubmit using the provided prototype
        def initialize(params = {})
            @file_content = params.dig(:file_content)
            @file_url = params.dig(:file_url)
            @file_content_url = params.dig(:file_content_url)
            @file_name = params.dig(:file_name)
            @invoice_type_code = params.dig(:invoice_type_code)
        end

        ##
        # @return [String] The base64 string of document content
        attr_accessor :file_content

        ##
        # @return [String] The location of the file provided
        attr_accessor :file_url

        ##
        # @return [String] The location of the file provided
        attr_accessor :file_content_url

        ##
        # @return [String] The name of the file provided
        attr_accessor :file_name

        ##
        # @return [String] The type of LockstepApi2.Models.TranscriptionRequestSubmit.InvoiceTypeCode requested to transcribe content to.
        attr_accessor :invoice_type_code

        ##
        # @return [object] This object as a JSON key-value structure
        def as_json(options={})
            {
                'fileContent' => @file_content,
                'fileUrl' => @file_url,
                'fileContentUrl' => @file_content_url,
                'fileName' => @file_name,
                'invoiceTypeCode' => @invoice_type_code,
            }
        end

        ##
        # @return [String] This object converted to a JSON string
        def to_json(*options)
            "[#{as_json(*options).to_json(*options)}]"
        end
    end
end
