import React, { useState } from 'react';
import { useMutation } from '@apollo/client';
import { CREATE_TASK } from '../graphql/mutations';
import { GET_TASKS } from '../graphql/queries';

function CreateTask() {
  const [title, setTitle] = useState('');
  const [description, setDescription] = useState('');
  const [createTask] = useMutation(CREATE_TASK, {
    refetchQueries: [{ query: GET_TASKS }],
    update(cache, { data: { createTask } }) {
      const { tasks } = cache.readQuery({ query: GET_TASKS });
      cache.writeQuery({
        query: GET_TASKS,
        data: { tasks: [...tasks, createTask] }
      });
    }
  });

  const handleSubmit = async (e) => {
    e.preventDefault();
    if (!title.trim()) return;

    try {
      // Получаем ID текущего пользователя из localStorage
      const userId = localStorage.getItem('userId');
      
      await createTask({
        variables: {
          title,
          description,
          userId // Добавляем userId к новой задаче
        }
      });
      setTitle('');
      setDescription('');
    } catch (err) {
      console.error('Error creating task:', err);
    }
  };

  return (
    <form onSubmit={handleSubmit} className="create-task-form">
      <input
        type="text"
        value={title}
        onChange={(e) => setTitle(e.target.value)}
        placeholder="Task title"
        required
      />
      <textarea
        value={description}
        onChange={(e) => setDescription(e.target.value)}
        placeholder="Task description"
      />
      <button type="submit">Add Task</button>
    </form>
  );
}

export default CreateTask; 