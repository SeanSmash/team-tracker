import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import Player from "./Player";

function Team(){
    const [team, setTeam] = useState([])
    const [players, setPlayers] = useState([])
    const params = useParams()

    useEffect(() => {
        fetch(`http://localhost:9292/teams/${params.id}`)
        .then((r) => r.json())
        .then((data) => {
            setTeam(data)
            setPlayers(data.players)
        })
    }, [])
    
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
                {players.map(p =>{
                    return(
                        <Player p={p} teamName={team.team} teamId={team.id} />
                    )
                })}
            </tbody>
        </table>
        )
    }

    return(
        <>
        <h1>{team.team}</h1>
        {playerTable()}
        </>
    )
}

export default Team;