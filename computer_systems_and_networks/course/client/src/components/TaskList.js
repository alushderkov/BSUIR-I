import React, { useState } from 'react';
import { useQuery, useMutation } from '@apollo/client';
import { GET_TASKS } from '../graphql/queries';
import { UPDATE_TASK, DELETE_TASK } from '../graphql/mutations';

function TaskList() {
  const [editingTask, setEditingTask] = useState(null);
  const [editTitle, setEditTitle] = useState('');
  const [editDescription, setEditDescription] = useState('');
  const [editDate, setEditDate] = useState('');
  const [editComplexity, setEditComplexity] = useState('MEDIUM');
  const [editTags, setEditTags] = useState('');
  const [editDeadline, setEditDeadline] = useState('');

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
      const tagsArray = editTags.split(',').map(tag => tag.trim()).filter(tag => tag);
      await updateTask({
        variables: {
          id: taskId,
          title: editTitle,
          description: editDescription,
          date: editDate,
          complexity: editComplexity,
          tags: tagsArray,
          deadline: editDeadline || null
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

  const startEditing = (task) => {
    setEditingTask(task.id);
    setEditTitle(task.title);
    setEditDescription(task.description || '');
    setEditDate(task.date);
    setEditComplexity(task.complexity);
    setEditTags(task.tags.join(', '));
    setEditDeadline(task.deadline || '');
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
              <div className="form-row">
                <div className="form-group">
                  <label>Date:</label>
                  <input
                    type="date"
                    value={editDate}
                    onChange={(e) => setEditDate(e.target.value)}
                  />
                </div>
                <div className="form-group">
                  <label>Complexity:</label>
                  <select
                    value={editComplexity}
                    onChange={(e) => setEditComplexity(e.target.value)}
                  >
                    <option value="EASY">Easy</option>
                    <option value="MEDIUM">Medium</option>
                    <option value="HARD">Hard</option>
                  </select>
                </div>
              </div>
              <div className="form-row">
                <div className="form-group">
                  <label>Tags:</label>
                  <input
                    type="text"
                    value={editTags}
                    onChange={(e) => setEditTags(e.target.value)}
                    placeholder="work, important, urgent"
                  />
                </div>
                <div className="form-group">
                  <label>Deadline:</label>
                  <input
                    type="date"
                    value={editDeadline}
                    onChange={(e) => setEditDeadline(e.target.value)}
                  />
                </div>
              </div>
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
                <div className="task-meta">
                  <span className="task-date">Date: {new Date(task.date).toLocaleDateString()}</span>
                  <span className="task-complexity">Complexity: {task.complexity}</span>
                  <div className="task-tags">
                    {task.tags.map((tag, index) => (
                      <span key={index} className="tag">{tag}</span>
                    ))}
                  </div>
                  {task.deadline && (
                    <span className="task-deadline">
                      Deadline: {new Date(task.deadline).toLocaleDateString()}
                    </span>
                  )}
                  <small>Created: {new Date(task.createdAt).toLocaleString()}</small>
                </div>
              </div>
              <div className="task-actions">
                <button onClick={() => startEditing(task)}>Edit</button>
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