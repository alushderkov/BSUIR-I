import React, { useState } from 'react';
import { useQuery, useMutation } from '@apollo/client';
import { GET_TASKS } from '../graphql/queries';
import { UPDATE_TASK, DELETE_TASK } from '../graphql/mutations';

function TaskList() {
  const [editingTask, setEditingTask] = useState(null);
  const [editTitle, setEditTitle] = useState('');
  const [editDescription, setEditDescription] = useState('');

  const { loading, error, data } = useQuery(GET_TASKS, {
    fetchPolicy: 'network-only' // Это заставит Apollo всегда делать новый запрос
  });

  const [updateTask] = useMutation(UPDATE_TASK, {
    refetchQueries: [{ query: GET_TASKS }]
  });

  const [deleteTask] = useMutation(DELETE_TASK, {
    refetchQueries: [{ query: GET_TASKS }]
  });

  if (loading) return <p>Loading...</p>;
  if (error) return <p>Error: {error.message}</p>;

  const tasks = data.tasks;

  const handleUpdateTask = async (taskId) => {
    try {
      await updateTask({
        variables: {
          id: taskId,
          title: editTitle,
          description: editDescription
        }
      });
      setEditingTask(null);
    } catch (err) {
      console.error('Error updating task:', err);
    }
  };

  const handleDeleteTask = async (taskId) => {
    try {
      await deleteTask({
        variables: { id: taskId }
      });
    } catch (err) {
      console.error('Error deleting task:', err);
    }
  };

  const handleToggleComplete = async (task) => {
    try {
      await updateTask({
        variables: {
          id: task.id,
          completed: !task.completed
        }
      });
    } catch (err) {
      console.error('Error toggling task completion:', err);
    }
  };

  if (tasks.length === 0) {
    return <div className="empty-message">No tasks yet. Create your first task!</div>;
  }

  return (
    <div className="task-list">
      {tasks.map(task => (
        <div key={task.id} className={`task-item ${task.completed ? 'completed' : ''}`}>
          <input
            type="checkbox"
            checked={task.completed}
            onChange={() => handleToggleComplete(task)}
          />
          {editingTask === task.id ? (
            <div className="edit-form">
              <input
                type="text"
                value={editTitle}
                onChange={(e) => setEditTitle(e.target.value)}
                placeholder="Task title"
              />
              <textarea
                value={editDescription}
                onChange={(e) => setEditDescription(e.target.value)}
                placeholder="Task description"
              />
              <div className="edit-buttons">
                <button onClick={() => handleUpdateTask(task.id)}>Save</button>
                <button onClick={() => setEditingTask(null)}>Cancel</button>
              </div>
            </div>
          ) : (
            <>
              <div className="task-content">
                <h3>{task.title}</h3>
                <p>{task.description}</p>
                <small>Created: {new Date(task.createdAt).toLocaleString()}</small>
              </div>
              <div className="task-actions">
                <button onClick={() => {
                  setEditingTask(task.id);
                  setEditTitle(task.title);
                  setEditDescription(task.description);
                }}>Edit</button>
                <button onClick={() => handleDeleteTask(task.id)}>Delete</button>
              </div>
            </>
          )}
        </div>
      ))}
    </div>
  );
}

export default TaskList; 