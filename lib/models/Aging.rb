#  Represents an aging record

class Aging

    attr_accessor :bucket, :currencyCode, :outstandingBalance

    def initialize(params={})

        @bucket = params.fetch(:bucket) # Aging bucket of outstanding balance data (days past due date of invoice)
        @currencyCode = params.fetch(:currencyCode) # Currency code of aging bucket
        @outstandingBalance = params.fetch(:outstandingBalance) # Outstanding balance for the given aging bucket
    end

end