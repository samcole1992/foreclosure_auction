import React, {Component} from 'react';

class User extends Component {
  constructor(props){
    super(props);

  }

  render(){
    let user = <a href={`users/${this.props.user.id}`}>{this.props.user.email}</a>;


    return(
      <div>
        {user}
      </div>
    );
  }
}

export default User;
