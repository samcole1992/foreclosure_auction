import 'babel-polyfill';
import React from 'react';
import ReactDOM from 'react-dom';
import PropertyList from './components/PropertyList'

$(function() {
  ReactDOM.render(
    <PropertyList/>,
    document.getElementById('PropertyList')
  );
});
