class Stock < ApplicationRecord

  def self.new_lookup(ticker_symbol)
    client = IEX::Api::Client.new(
      publishable_token: 'pk_28620e28e98c412ebc1a51404ebd752e',
      secret_token: 'secret_token',
      endpoint: 'https://sandbox.iexapis.com/'
    )
    client.quote(ticker_symbol)
  end

end
