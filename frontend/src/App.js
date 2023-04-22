import './App.css';
import React from "react";
import { Routes, Route, NavLink } from "react-router-dom";
import Home from './Home';
import Teams from './Teams';
import Team from './Team';
import Players from './Players';
import PlayerEdit from './PlayerEdit';

function App() {

    function nav(){
        return(
            <>
                <NavLink to="/">Home</NavLink><br />
                <NavLink to="/teams">Teams</NavLink><br />
                <NavLink to="/players">Players</NavLink>
            </>
        )
    }

  return (
    <main>
        <header>
        <h1 className='title'>Team Tracker</h1>
        </header>
        {nav()}
      
        <Routes>
            <Route path="/teams" element={<Teams />} />
            <Route path="/teams/:id" element={<Team />} />
            <Route path="/players/:id" element={<PlayerEdit />} />
            <Route path="/players" element={<Players />} />
            <Route path="/" element={<Home />} />
            <Route path="*" element={<h1>404 not found</h1>} />
        </Routes>
    </main>
  );
}

export default App;