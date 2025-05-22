const fs = require('fs');
const path = require('path');
const { generateToken, hashPassword, comparePassword, getUserId } = require('../utils/auth');

const dataPath = path.join(__dirname, '../data');
const tasksPath = path.join(dataPath, 'tasks.json');
const usersPath = path.join(dataPath, 'users.json');

const readData = (filePath) => {
  const data = fs.readFileSync(filePath, 'utf8');
  return JSON.parse(data);
};

const writeData = (filePath, data) => {
  fs.writeFileSync(filePath, JSON.stringify(data, null, 2));
};

const resolvers = {
  Query: {
    tasks: (_, __, context) => {
      const userId = getUserId(context);
      const data = readData(tasksPath);
      return data.tasks.filter(task => task.userId === userId);
    },
    task: (_, { id }, context) => {
      const userId = getUserId(context);
      const data = readData(tasksPath);
      const task = data.tasks.find(task => task.id === id);
      if (!task || task.userId !== userId) {
        throw new Error('Task not found');
      }
      return task;
    },
    me: (_, __, context) => {
      const userId = getUserId(context);
      const data = readData(usersPath);
      const user = data.users.find(user => user.id === userId);
      if (!user) {
        throw new Error('User not found');
      }
      return {
        id: user.id,
        username: user.username,
        createdAt: user.createdAt
      };
    }
  },
  Mutation: {
    createTask: async (_, { title, description, userId }, context) => {
      const contextUserId = getUserId(context);
      if (contextUserId !== userId) {
        throw new Error('Not authorized');
      }
      const data = readData(tasksPath);
      const newTask = {
        id: Date.now().toString(),
        title,
        description,
        completed: false,
        createdAt: new Date().toISOString(),
        userId
      };
      data.tasks.push(newTask);
      writeData(tasksPath, data);
      return newTask;
    },
    updateTask: async (_, { id, title, description, completed }, context) => {
      const userId = getUserId(context);
      const data = readData(tasksPath);
      const taskIndex = data.tasks.findIndex(task => task.id === id && task.userId === userId);
      if (taskIndex === -1) {
        throw new Error('Task not found');
      }
      const updatedTask = {
        ...data.tasks[taskIndex],
        ...(title && { title }),
        ...(description && { description }),
        ...(completed !== undefined && { completed })
      };
      data.tasks[taskIndex] = updatedTask;
      writeData(tasksPath, data);
      return updatedTask;
    },
    deleteTask: async (_, { id }, context) => {
      const userId = getUserId(context);
      const data = readData(tasksPath);
      const taskIndex = data.tasks.findIndex(task => task.id === id && task.userId === userId);
      if (taskIndex === -1) {
        throw new Error('Task not found');
      }
      const deletedTask = data.tasks[taskIndex];
      data.tasks.splice(taskIndex, 1);
      writeData(tasksPath, data);
      return deletedTask;
    },
    register: async (_, { username, password }) => {
      const data = readData(usersPath);
      if (data.users.find(user => user.username === username)) {
        throw new Error('Username already exists');
      }
      const hashedPassword = await hashPassword(password);
      const newUser = {
        id: Date.now().toString(),
        username,
        password: hashedPassword,
        createdAt: new Date().toISOString()
      };
      data.users.push(newUser);
      writeData(usersPath, data);
      const token = generateToken(newUser);
      return {
        token,
        user: {
          id: newUser.id,
          username: newUser.username,
          createdAt: newUser.createdAt
        }
      };
    },
    login: async (_, { username, password }) => {
      const data = readData(usersPath);
      const user = data.users.find(user => user.username === username);
      if (!user) {
        throw new Error('User not found');
      }
      const valid = await comparePassword(password, user.password);
      if (!valid) {
        throw new Error('Invalid password');
      }
      const token = generateToken(user);
      return {
        token,
        user: {
          id: user.id,
          username: user.username,
          createdAt: user.createdAt
        }
      };
    }
  }
};

module.exports = resolvers; 