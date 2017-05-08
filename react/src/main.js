import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';
import PropertyList from './components/PropertyList'
import UserList from './components/UserList'


$(function() {
  if (document.getElementById('PropertyList')){
    ReactDOM.render(
      <PropertyList />,
      document.getElementById('PropertyList')
    );
  } else {
    if (document.getElementById('UserList')){
      ReactDOM.render(
        <UserList />,
        document.getElementById('UserList')
      );
    }
  }
});
