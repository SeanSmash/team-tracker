import React, { useEffect, useState } from 'react'

function Players(){
    const [teams, setTeams] = useState([])

    useEffect(() => {
        fetch("http://localhost:9292/players")
        .then((resp) => resp.json())
        .then((data) => setTeams(data))
    }, [])

    function statusDisplay(statusArray){
        const statusJoin = []
        statusArray.map(s =>{
            statusJoin.push(s.status)
        })
        
        return(
            <td>{statusJoin.toString()}</td>
        )
    }
    
    const displayTeams = teams.map(t =>{
        return(
            <>
            {t.players.map(p =>{
                return(
                    <tr key={p.id}>
                        <td>{t.team}</td>
                        <td>{p.first_name}</td>
                        <td>{p.last_name}</td>
                        <td>{p.jersey_number}</td>
                        <td>{p.position}</td>
                        {statusDisplay(p.status)}
                    </tr>
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

