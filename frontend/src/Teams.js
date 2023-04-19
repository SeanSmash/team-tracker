import React, { useEffect, useState } from 'react'

function Teams(){
    const [teams, setTeams] = useState([])

    useEffect(() => {
        fetch("http://localhost:9292/teams")
        .then((r) => r.json())
        .then((data) => setTeams(data))
    }, [])

    const displayTeams = teams.map(t =>{
            return(
                <h3 key={t.id}>{t.team}</h3>
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