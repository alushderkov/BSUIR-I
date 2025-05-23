import { gql } from '@apollo/client';

export const CREATE_TASK = gql`
  mutation CreateTask(
    $title: String!
    $description: String
    $userId: String!
    $date: String!
    $complexity: TaskComplexity!
    $tags: [String!]!
    $deadline: String
  ) {
    createTask(
      title: $title
      description: $description
      userId: $userId
      date: $date
      complexity: $complexity
      tags: $tags
      deadline: $deadline
    ) {
      id
      title
      description
      completed
      createdAt
      userId
      date
      complexity
      tags
      deadline
    }
  }
`;

export const UPDATE_TASK = gql`
  mutation UpdateTask(
    $id: ID!
    $title: String
    $description: String
    $completed: Boolean
    $date: String
    $complexity: TaskComplexity
    $tags: [String!]
    $deadline: String
  ) {
    updateTask(
      id: $id
      title: $title
      description: $description
      completed: $completed
      date: $date
      complexity: $complexity
      tags: $tags
      deadline: $deadline
    ) {
      id
      title
      description
      completed
      createdAt
      userId
      date
      complexity
      tags
      deadline
    }
  }
`;

export const DELETE_TASK = gql`
  mutation DeleteTask($id: ID!) {
    deleteTask(id: $id) {
      id
    }
  }
`; 