import React, { useState } from 'react';
import { useMutation } from '@apollo/client';
import { CREATE_TASK } from '../graphql/mutations';
import { GET_TASKS } from '../graphql/queries';

function CreateTask() {
  const [title, setTitle] = useState('');
  const [description, setDescription] = useState('');
  const [date, setDate] = useState(new Date().toISOString().split('T')[0]);
  const [complexity, setComplexity] = useState('MEDIUM');
  const [tags, setTags] = useState('');
  const [deadline, setDeadline] = useState('');

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
      const userId = localStorage.getItem('userId');
      if (!userId) {
        console.error('User ID not found');
        return;
      }

      const tagsArray = tags.split(',').map(tag => tag.trim()).filter(tag => tag);
      
      await createTask({
        variables: {
          title,
          description: description || '',
          userId,
          date: date || new Date().toISOString().split('T')[0],
          complexity: complexity || 'MEDIUM',
          tags: tagsArray.length > 0 ? tagsArray : ['untagged'],
          deadline: deadline || null
        }
      });
      setTitle('');
      setDescription('');
      setDate(new Date().toISOString().split('T')[0]);
      setComplexity('MEDIUM');
      setTags('');
      setDeadline('');
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
      <div className="form-row">
        <div className="form-group">
          <label>Date:</label>
          <input
            type="date"
            value={date}
            onChange={(e) => setDate(e.target.value)}
            required
          />
        </div>
        <div className="form-group">
          <label>Complexity:</label>
          <select
            value={complexity}
            onChange={(e) => setComplexity(e.target.value)}
            required
          >
            <option value="EASY">Easy</option>
            <option value="MEDIUM">Medium</option>
            <option value="HARD">Hard</option>
          </select>
        </div>
      </div>
      <div className="form-row">
        <div className="form-group">
          <label>Tags (comma-separated):</label>
          <input
            type="text"
            value={tags}
            onChange={(e) => setTags(e.target.value)}
            placeholder="work, important, urgent"
          />
        </div>
        <div className="form-group">
          <label>Deadline:</label>
          <input
            type="date"
            value={deadline}
            onChange={(e) => setDeadline(e.target.value)}
          />
        </div>
      </div>
      <button type="submit">Add Task</button>
    </form>
  );
}

export default CreateTask; 