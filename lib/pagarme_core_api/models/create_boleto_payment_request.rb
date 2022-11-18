# pagarme_core_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
module PagarmeCoreApi
  # Contains the settings for creating a boleto payment
  class CreateBoletoPaymentRequest < BaseModel
    # Number of retries
    # @return [Integer]
    attr_accessor :retries

    # The bank code, containing three characters. The available codes are on the
    # API specification
    # @return [String]
    attr_accessor :bank

    # The instructions field that will be printed on the boleto.
    # @return [String]
    attr_accessor :instructions

    # Boleto due date
    # @return [DateTime]
    attr_accessor :due_at

    # Card's billing address
    # @return [CreateAddressRequest]
    attr_accessor :billing_address

    # The address id for the billing address
    # @return [String]
    attr_accessor :billing_address_id

    # Customer identification number with the bank
    # @return [String]
    attr_accessor :nosso_numero

    # Boleto identification
    # @return [String]
    attr_accessor :document_number

    # Soft Descriptor
    # @return [String]
    attr_accessor :statement_descriptor

    # Soft Descriptor
    # @return [CreateInterestRequest]
    attr_accessor :interest

    # Soft Descriptor
    # @return [CreateFineRequest]
    attr_accessor :fine

    # Soft Descriptor
    # @return [Integer]
    attr_accessor :max_days_to_pay_past_due

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['retries'] = 'retries'
      @_hash['bank'] = 'bank'
      @_hash['instructions'] = 'instructions'
      @_hash['due_at'] = 'due_at'
      @_hash['billing_address'] = 'billing_address'
      @_hash['billing_address_id'] = 'billing_address_id'
      @_hash['nosso_numero'] = 'nosso_numero'
      @_hash['document_number'] = 'document_number'
      @_hash['statement_descriptor'] = 'statement_descriptor'
      @_hash['interest'] = 'interest'
      @_hash['fine'] = 'fine'
      @_hash['max_days_to_pay_past_due'] = 'max_days_to_pay_past_due'
      @_hash
    end

    def initialize(retries = nil,
                   bank = nil,
                   instructions = nil,
                   billing_address = nil,
                   billing_address_id = nil,
                   document_number = nil,
                   statement_descriptor = nil,
                   due_at = nil,
                   nosso_numero = nil,
                   interest = nil,
                   fine = nil,
                   max_days_to_pay_past_due = nil)
      @retries = retries
      @bank = bank
      @instructions = instructions
      @due_at = due_at
      @billing_address = billing_address
      @billing_address_id = billing_address_id
      @nosso_numero = nosso_numero
      @document_number = document_number
      @statement_descriptor = statement_descriptor
      @interest = interest
      @fine = fine
      @max_days_to_pay_past_due = max_days_to_pay_past_due
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      retries = hash['retries']
      bank = hash['bank']
      instructions = hash['instructions']
      if hash['billing_address']
        billing_address = CreateAddressRequest.from_hash(hash['billing_address'])
      end
      billing_address_id = hash['billing_address_id']
      document_number = hash['document_number']
      statement_descriptor = hash['statement_descriptor']
      due_at = APIHelper.rfc3339(hash['due_at']) if hash['due_at']
      nosso_numero = hash['nosso_numero']
      interest = CreateInterestRequest.from_hash(hash['interest']) if
        hash['interest']
      fine = CreateFineRequest.from_hash(hash['fine']) if hash['fine']
      max_days_to_pay_past_due = hash['max_days_to_pay_past_due']

      # Create object from extracted values.
      CreateBoletoPaymentRequest.new(retries,
                                     bank,
                                     instructions,
                                     billing_address,
                                     billing_address_id,
                                     document_number,
                                     statement_descriptor,
                                     due_at,
                                     nosso_numero,
                                     interest,
                                     fine,
                                     max_days_to_pay_past_due)
    end
  end
end
