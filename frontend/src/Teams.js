import React, { useEffect, useState } from 'react'
import { NavLink } from "react-router-dom";


function Teams(){
    const [teams, setTeams] = useState([])

    useEffect(() => {
        fetch("http://localhost:9292/teams")
        .then((r) => r.json())
        .then((data) => setTeams(data))
    }, [])

    const displayTeams = teams.map(t =>{
            return(
                <nav>
                    <NavLink to='/teams/${id}' key={t.id}>{t.team}</NavLink>
                </nav>
            )
        })

    return(
        <>
        <h1>Teams</h1>
        {displayTeams}
        </>
    )
}

export default Teams