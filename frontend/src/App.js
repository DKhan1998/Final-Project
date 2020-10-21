import React from 'react';
import './App.css';
import Header from './Components/Header';
import Nav from './Components/nav';
import OpenTickets from './Components/OpenTicket';
import NewTicket from './Components/NewTicketForm';



function App() {
  return (
    <div className="App">
      <Nav/>
      <Header/>
      <OpenTickets/>
    </div>
  );
}

export default App;
