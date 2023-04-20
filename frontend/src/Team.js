import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";

function Team(){
    const [players, setPlayers] = useState([])
    const params = useParams()

    useEffect(() => {
        fetch(`http://localhost:9292/teams/${params.id}`)
        .then((r) => r.json())
        .then((data) => setPlayers(data))
    }, [])

    function playerTable(){
        return(
            <table>
            <thead>
                <tr>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Number</th>
                    <th>Position</th>
                </tr>
            </thead>
            <tbody>
                {displayPlayers}
            </tbody>
        </table>
        )
    }
    
    const displayPlayers = players.map(p =>{
        return(
            <tr key={p.id}>
                <td>{p.first_name}</td>
                <td>{p.last_name}</td>
                <td>{p.jersey_number}</td>
                <td>{p.position}</td>
            </tr>
        )
    })

    return(
        <>
        <h1>Team name</h1>
        {playerTable()}
        </>
    )
}

export default Team;