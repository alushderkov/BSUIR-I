import { gql } from '@apollo/client';

export const GET_TASKS = gql`
  query GetTasks {
    tasks {
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

export const GET_TASKS_BY_COMPLEXITY = gql`
  query GetTasksByComplexity($complexity: TaskComplexity!) {
    tasksByComplexity(complexity: $complexity) {
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

export const GET_TASKS_BY_TAG = gql`
  query GetTasksByTag($tag: String!) {
    tasksByTag(tag: $tag) {
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

export const GET_TASKS_BY_DATE_RANGE = gql`
  query GetTasksByDateRange($startDate: String!, $endDate: String!) {
    tasksByDateRange(startDate: $startDate, endDate: $endDate) {
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

export const GET_TASK = gql`
  query GetTask($id: ID!) {
    task(id: $id) {
      id
      title
      description
      completed
      createdAt
      userId
    }
  }
`; 