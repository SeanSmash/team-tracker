import React from "react";

function Player({players}){


    function statusDisplay(statusArray){
        const statusJoin = []
        statusArray.map(s =>{
            statusJoin.push(s.status)
        })
        
        return(
            <td>{statusJoin.toString()}</td>
        )
    }

    const displayPlayers = players.map(p =>{
        return(
            <tr key={p.id}>
                <td>{p.first_name}</td>
                <td>{p.last_name}</td>
                <td>{p.jersey_number}</td>
                <td>{p.position}</td>
                {statusDisplay(p.status)}
            </tr>
        )
    })

    return(
        <>
            {displayPlayers}
        </>

    )
}

export default Player