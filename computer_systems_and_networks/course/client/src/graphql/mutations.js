import { gql } from '@apollo/client';

export const CREATE_TASK = gql`
  mutation CreateTask($title: String!, $description: String, $userId: String!) {
    createTask(title: $title, description: $description, userId: $userId) {
      id
      title
      description
      completed
      createdAt
      userId
    }
  }
`;

export const UPDATE_TASK = gql`
  mutation UpdateTask($id: ID!, $title: String, $description: String, $completed: Boolean) {
    updateTask(id: $id, title: $title, description: $description, completed: $completed) {
      id
      title
      description
      completed
      createdAt
      userId
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