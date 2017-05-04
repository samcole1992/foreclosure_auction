import React, {Component} from 'react';

class Property extends Component {
  constructor(props){
    super(props);

  }

  render(){
    let property = <a href={`properties/${this.props.property.id}`}>{this.props.property.address}</a>;


    return(
      <div>
        {property}
      </div>
    );
  }
}

export default Property;
