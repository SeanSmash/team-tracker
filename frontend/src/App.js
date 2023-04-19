import './App.css';
import React from "react";
import { Routes, Route, NavLink } from "react-router-dom";
import Teams from './Teams';
import Players from './Players';

function App() {

  return (
    <main>
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