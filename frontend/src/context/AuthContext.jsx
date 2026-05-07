/* eslint-disable react-refresh/only-export-components */
import React, { createContext, useState, useEffect, useCallback } from 'react';
import * as authUtils from '../utils/auth';
import api from '../utils/api';

export const AuthContext = createContext();

export const AuthProvider = ({ children }) => {
  const [user, setUser] = useState(authUtils.getUser());
  const [isLoading, setIsLoading] = useState(true);

  const logout = useCallback(() => {
    authUtils.removeToken();
    authUtils.removeUser();
    setUser(null);
  }, []);

  useEffect(() => {
    const fetchCurrentUser = async () => {
      if (authUtils.isAuthenticated()) {
        try {
          const response = await api.get('/auth/me');
          setUser(response.data);
          authUtils.setUser(response.data);
        } catch (error) {
          console.error("Session expired or invalid", error);
          logout();
        }
      }
      setIsLoading(false);
    };

    fetchCurrentUser();
  }, []);

  const login = async (username, password) => {
    const response = await api.post('/auth/login', { username, password });
    const { token, ...userData } = response.data;
    
    authUtils.setToken(token);
    authUtils.setUser(userData);
    setUser(userData);
    return userData;
  };

  const register = async (username, email, password, displayName) => {
    const response = await api.post('/auth/register', { username, email, password, displayName });
    const { token, ...userData } = response.data;
    
    authUtils.setToken(token);
    authUtils.setUser(userData);
    setUser(userData);
    return userData;
  };


  return (
    <AuthContext.Provider value={{ user, isLoading, login, register, logout }}>
      {children}
    </AuthContext.Provider>
  );
};
