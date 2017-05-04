import React from 'react';
import Property from './Property';

class PropertyList extends React.Component {
  constructor(props) {
    super(props);
    this.state = { properties: [] };
    this.getProperties = this.getProperties.bind(this);
  }

  componentDidMount(){
    this.getProperties();
    setInterval(this.getProperties, 1500);
  }

  getProperties() {
    fetch('api/v1/properties',{
      credentials: "same-origin"
    }).then(response => {
      if (response.ok) {
        return response;
      } else {
        let errorMessage = `${response.status}, (${response.statusText})`;
        let error = new Error(errorMessage);
        throw(error);
      }
    })
    .then(response => response.json())
    .then(response => {
      let newProperties = [];
      response.forEach(function(property){
        newProperties.push(property);
      });
      newProperties;
      this.setState({
        properties: newProperties
      });
    });
  }


  render(){
    let properties = this.state.properties.map((property)=>{
      return(
        <Property
          key = {property.id}
          property = {property}
        />
      );
    });

    return(
      <div>
        {properties}
      </div>
    );
  }
}

export default PropertyList;
