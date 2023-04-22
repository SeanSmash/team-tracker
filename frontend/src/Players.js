import React, { useEffect, useState } from 'react'
import Player from './Player'

function Players(){
    const [teams, setTeams] = useState([])

    useEffect(() => {
        fetch("http://localhost:9292/players")
        .then((resp) => resp.json())
        .then((data) => setTeams(data))
    }, [])
 
    const displayTeams = teams.map(t =>{
        return(
            <>
            {t.players.map(p =>{
                return(
                    <Player p={p} teamName={t.team} teamId={t.id} />
                )
            })}
            </>
        )
    })
    
    function playerTable(){
        return(
            <table>
            <thead>
                <tr>
                    <th>Team</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Number</th>
                    <th>Position</th>
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                {displayTeams}
            </tbody>
        </table>
        )
    }

    return(
        <>
        <h1>Players</h1>
        {playerTable()}
        </>
    )
}

export default Players