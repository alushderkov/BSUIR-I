import React, { useState, useEffect } from 'react';
import { ApolloClient, InMemoryCache, ApolloProvider, createHttpLink } from '@apollo/client';
import { setContext } from '@apollo/client/link/context';
import TaskList from './components/TaskList';
import CreateTask from './components/CreateTask';
import Auth from './components/Auth';
import './App.css';

const httpLink = createHttpLink({
  uri: 'http://localhost:4000/graphql'
});

const authLink = setContext((_, { headers }) => {
  const token = localStorage.getItem('token');
  return {
    headers: {
      ...headers,
      authorization: token ? `Bearer ${token}` : ''
    }
  };
});

const client = new ApolloClient({
  link: authLink.concat(httpLink),
  cache: new InMemoryCache()
});

function App() {
  const [user, setUser] = useState(null);

  useEffect(() => {
    const token = localStorage.getItem('token');
    const userId = localStorage.getItem('userId');
    if (token && userId) {
      setUser({ id: userId });
    }
  }, []);

  const handleLogin = (userData, token) => {
    localStorage.setItem('token', token);
    localStorage.setItem('userId', userData.id);
    setUser(userData);
  };

  const handleLogout = () => {
    localStorage.removeItem('token');
    localStorage.removeItem('userId');
    setUser(null);
  };

  if (!user) {
    return (
      <ApolloProvider client={client}>
        <div className="app">
          <Auth onLogin={handleLogin} />
        </div>
      </ApolloProvider>
    );
  }

  return (
    <ApolloProvider client={client}>
      <div className="app">
        <header className="header">
          <div className="user-info">
            <h1>Task Manager</h1>
          </div>
          <button className="logout-button" onClick={handleLogout}>
            Logout
          </button>
        </header>
        <CreateTask />
        <TaskList />
      </div>
    </ApolloProvider>
  );
}

export default App; 