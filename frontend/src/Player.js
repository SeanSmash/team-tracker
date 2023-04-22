import React from "react";
import { Link } from 'react-router-dom'

function Player({p, teamName, teamId}){

    function statusDisplay(statusArray){
        const statusJoin = []
        statusArray.map(s =>{
            statusJoin.push(s.status)
        })
        
        return(
            <td>{statusJoin.toString()}</td>
        )
    }

    return(
        <>
        <tr key={p.id}>
            <td>{teamName}</td>
            <td>{p.first_name}</td>
            <td>{p.last_name}</td>
            <td>{p.jersey_number}</td>
            <td>{p.position}</td>
            {statusDisplay(p.status)}
            <td><Link to={`/players/${p.id}`}>Edit</Link></td>
        </tr>
        </>
    )

}

export default Player