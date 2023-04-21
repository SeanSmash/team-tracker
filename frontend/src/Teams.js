import React, { useEffect, useState } from 'react'
import { Link } from "react-router-dom";


function Teams(){
    const [teams, setTeams] = useState([])

    useEffect(() => {
        fetch("http://localhost:9292/teams")
        .then((r) => r.json())
        .then((data) => setTeams(data))
    }, [])

    const displayTeams = teams.map(t =>{
            return(
                <nav key={t.id}>
                    <Link to={`/teams/${t.id}`} >{t.team}</Link>
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