import React, { useEffect, useState } from 'react'

function Players(){
    const [players, setPlayers] = useState([])

    useEffect(() => {
        fetch("http://localhost:9292/players")
        .then((resp) => resp.json())
        .then((data) => setPlayers(data))
    }, [])

    const displayPlayers = players.map(p =>{
        return(
            <h3 key={p.id}>{p.last_name}</h3>
        )
    })

    return(
        <>
        <h1>Players</h1>
        {displayPlayers}
        </>
    )
}

export default Players