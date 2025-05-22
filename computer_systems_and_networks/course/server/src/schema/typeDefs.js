const { gql } = require('apollo-server-express');

const typeDefs = gql`
  type User {
    id: ID!
    username: String!
    createdAt: String!
  }

  enum TaskComplexity {
    EASY
    MEDIUM
    HARD
  }

  type Task {
    id: ID!
    title: String!
    description: String
    completed: Boolean!
    createdAt: String!
    userId: ID!
    date: String!
    complexity: TaskComplexity!
    tags: [String!]!
    deadline: String
  }

  type AuthPayload {
    token: String!
    user: User!
  }

  type Query {
    tasks: [Task!]!
    task(id: ID!): Task
    me: User
    tasksByComplexity(complexity: TaskComplexity!): [Task!]!
    tasksByTag(tag: String!): [Task!]!
    tasksByDateRange(startDate: String!, endDate: String!): [Task!]!
  }

  type Mutation {
    createTask(
      title: String!
      description: String
      userId: String!
      date: String!
      complexity: TaskComplexity!
      tags: [String!]!
      deadline: String
    ): Task!
    updateTask(
      id: ID!
      title: String
      description: String
      completed: Boolean
      date: String
      complexity: TaskComplexity
      tags: [String!]
      deadline: String
    ): Task!
    deleteTask(id: ID!): Task!
    register(username: String!, password: String!): AuthPayload!
    login(username: String!, password: String!): AuthPayload!
  }
`;

module.exports = typeDefs; 