require "grape-swagger"

module V1
  class Base < Grape::API
    mount V1::Sessions
    mount V1::Users
  end
end
