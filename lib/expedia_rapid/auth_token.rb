# frozen_string_literal: true

require 'digest'

module ExpediaRapid
  AuthTokenPrefix = 'EAN'.freeze

  class AuthToken
    def initialize(api_key, secret)
      @api_key = api_key
      @secret = secret
    end

    def to_s
      timestamp = Time.now.to_i
      sig = signature(timestamp)
      "APIKey=#{@api_key},Signature=#{sig},timestamp=#{timestamp}"
    end

    private
    def signature(timestamp)
      sig_hash = "#{@api_key}#{@secret}#{timestamp}"
      Digest::SHA2.new(512).hexdigest(sig_hash)
    end
  end
end
