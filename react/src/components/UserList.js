import React from 'react';
import User from './User';

class UserList extends React.Component {
  constructor(props) {
    super(props);
    this.state = { users: [] };
  }



  componentDidMount() {
    fetch('api/v1/users',{
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
      let newUsers = [];
      response.forEach(function(user){
        newUsers.push(user);
      });
      newUsers;
      this.setState({
        users: newUsers
      });
    });
  }


  render(){
    let users = this.state.users.map((user)=>{
      return(
        <User
          key = {user.id}
          user = {user}
        />
      );
    });

    return(
      <div>
        {users}
      </div>
    );
  }
}

export default UserList;
