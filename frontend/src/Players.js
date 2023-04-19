import React, { useEffect, useState } from 'react'

function Players(){
    const [players, setPlayers] = useState([])

    useEffect(() => {
        fetch("http://localhost:9292/players")
        .then((resp) => resp.json())
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
        <h1>Players</h1>
        {playerTable()}
        </>
    )
}

export default Players