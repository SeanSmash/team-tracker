import './App.css';
import React from "react";
import { Routes, Route, NavLink } from "react-router-dom";
import Teams from './Teams';
import Players from './Players';

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
        {nav()}
      <header>
      <h1 className='title'>Team Tracker</h1>
      </header>
      <Routes>
        <Route path="/teams" element={<Teams />} />
        <Route path="/players" element={<Players />} />
        {/* <Route path="*" element={<h1>404 not found</h1>} /> */}
      </Routes>
    </main>
  );
}

export default App;