# pagarme_core_api
#
# This file was automatically generated by APIMATIC v2.0
# ( https://apimatic.io ).

require 'date'
require_relative 'get_transaction_response'

module PagarmeCoreApi
  # Response for voucher transactions
  class GetVoucherTransactionResponse < GetTransactionResponse
    # Text that will appear on the voucher's statement
    # @return [String]
    attr_accessor :statement_descriptor

    # Acquirer name
    # @return [String]
    attr_accessor :acquirer_name

    # Acquirer affiliation code
    # @return [String]
    attr_accessor :acquirer_affiliation_code

    # Acquirer TID
    # @return [String]
    attr_accessor :acquirer_tid

    # Acquirer NSU
    # @return [String]
    attr_accessor :acquirer_nsu

    # Acquirer authorization code
    # @return [String]
    attr_accessor :acquirer_auth_code

    # acquirer_message
    # @return [String]
    attr_accessor :acquirer_message

    # Acquirer return code
    # @return [String]
    attr_accessor :acquirer_return_code

    # Operation type
    # @return [String]
    attr_accessor :operation_type

    # Card data
    # @return [GetCardResponse]
    attr_accessor :card

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['statement_descriptor'] = 'statement_descriptor'
      @_hash['acquirer_name'] = 'acquirer_name'
      @_hash['acquirer_affiliation_code'] = 'acquirer_affiliation_code'
      @_hash['acquirer_tid'] = 'acquirer_tid'
      @_hash['acquirer_nsu'] = 'acquirer_nsu'
      @_hash['acquirer_auth_code'] = 'acquirer_auth_code'
      @_hash['acquirer_message'] = 'acquirer_message'
      @_hash['acquirer_return_code'] = 'acquirer_return_code'
      @_hash['operation_type'] = 'operation_type'
      @_hash['card'] = 'card'
      @_hash = super().merge(@_hash)
      @_hash
    end

    def initialize(statement_descriptor = nil,
                   acquirer_name = nil,
                   acquirer_affiliation_code = nil,
                   acquirer_tid = nil,
                   acquirer_nsu = nil,
                   acquirer_auth_code = nil,
                   acquirer_message = nil,
                   acquirer_return_code = nil,
                   operation_type = nil,
                   card = nil,
                   gateway_id = nil,
                   amount = nil,
                   status = nil,
                   success = nil,
                   created_at = nil,
                   updated_at = nil,
                   attempt_count = nil,
                   max_attempts = nil,
                   splits = nil,
                   id = nil,
                   gateway_response = nil,
                   antifraud_response = nil,
                   split = nil,
                   next_attempt = nil,
                   transaction_type = nil,
                   metadata = nil,
                   interest = nil,
                   fine = nil,
                   max_days_to_pay_past_due = nil)
      @statement_descriptor = statement_descriptor
      @acquirer_name = acquirer_name
      @acquirer_affiliation_code = acquirer_affiliation_code
      @acquirer_tid = acquirer_tid
      @acquirer_nsu = acquirer_nsu
      @acquirer_auth_code = acquirer_auth_code
      @acquirer_message = acquirer_message
      @acquirer_return_code = acquirer_return_code
      @operation_type = operation_type
      @card = card

      # Call the constructor of the base class
      super(gateway_id,
            amount,
            status,
            success,
            created_at,
            updated_at,
            attempt_count,
            max_attempts,
            splits,
            id,
            gateway_response,
            antifraud_response,
            split,
            next_attempt,
            transaction_type,
            metadata,
            interest,
            fine,
            max_days_to_pay_past_due)
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      statement_descriptor = hash['statement_descriptor']
      acquirer_name = hash['acquirer_name']
      acquirer_affiliation_code = hash['acquirer_affiliation_code']
      acquirer_tid = hash['acquirer_tid']
      acquirer_nsu = hash['acquirer_nsu']
      acquirer_auth_code = hash['acquirer_auth_code']
      acquirer_message = hash['acquirer_message']
      acquirer_return_code = hash['acquirer_return_code']
      operation_type = hash['operation_type']
      card = GetCardResponse.from_hash(hash['card']) if hash['card']
      gateway_id = hash['gateway_id']
      amount = hash['amount']
      status = hash['status']
      success = hash['success']
      created_at = APIHelper.rfc3339(hash['created_at']) if hash['created_at']
      updated_at = APIHelper.rfc3339(hash['updated_at']) if hash['updated_at']
      attempt_count = hash['attempt_count']
      max_attempts = hash['max_attempts']
      # Parameter is an array, so we need to iterate through it
      splits = nil
      unless hash['splits'].nil?
        splits = []
        hash['splits'].each do |structure|
          splits << (GetSplitResponse.from_hash(structure) if structure)
        end
      end
      id = hash['id']
      if hash['gateway_response']
        gateway_response = GetGatewayResponseResponse.from_hash(hash['gateway_response'])
      end
      if hash['antifraud_response']
        antifraud_response = GetAntifraudResponse.from_hash(hash['antifraud_response'])
      end
      # Parameter is an array, so we need to iterate through it
      split = nil
      unless hash['split'].nil?
        split = []
        hash['split'].each do |structure|
          split << (GetSplitResponse.from_hash(structure) if structure)
        end
      end
      next_attempt = APIHelper.rfc3339(hash['next_attempt']) if
        hash['next_attempt']
      transaction_type = hash['transaction_type']
      metadata = hash['metadata']
      interest = GetInterestResponse.from_hash(hash['interest']) if
        hash['interest']
      fine = GetFineResponse.from_hash(hash['fine']) if hash['fine']
      max_days_to_pay_past_due = hash['max_days_to_pay_past_due']

      # Create object from extracted values.
      GetVoucherTransactionResponse.new(statement_descriptor,
                                        acquirer_name,
                                        acquirer_affiliation_code,
                                        acquirer_tid,
                                        acquirer_nsu,
                                        acquirer_auth_code,
                                        acquirer_message,
                                        acquirer_return_code,
                                        operation_type,
                                        card,
                                        gateway_id,
                                        amount,
                                        status,
                                        success,
                                        created_at,
                                        updated_at,
                                        attempt_count,
                                        max_attempts,
                                        splits,
                                        id,
                                        gateway_response,
                                        antifraud_response,
                                        split,
                                        next_attempt,
                                        transaction_type,
                                        metadata,
                                        interest,
                                        fine,
                                        max_days_to_pay_past_due)
    end
  end
end
