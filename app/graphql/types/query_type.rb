# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Users
    field :users, resolver: Queries::Users
    field :user, resolver: Queries::User

    # Units
    field :units, resolver: Queries::Units
    field :unit, resolver: Queries::Unit

    # Property
    field :property, resolver: Queries::Property
  end
end
