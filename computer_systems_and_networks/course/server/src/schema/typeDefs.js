const { gql } = require('apollo-server-express');

const typeDefs = gql`
  type User {
    id: ID!
    username: String!
    createdAt: String!
  }

  type Task {
    id: ID!
    title: String!
    description: String
    completed: Boolean!
    createdAt: String!
    userId: ID!
  }

  type AuthPayload {
    token: String!
    user: User!
  }

  type Query {
    tasks: [Task!]!
    task(id: ID!): Task
    me: User
  }

  type Mutation {
    createTask(title: String!, description: String, userId: String!): Task!
    updateTask(id: ID!, title: String, description: String, completed: Boolean): Task!
    deleteTask(id: ID!): Task!
    register(username: String!, password: String!): AuthPayload!
    login(username: String!, password: String!): AuthPayload!
  }
`;

module.exports = typeDefs; 