import React, { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import Player from "./Player";

function Team(){
    const [team, setTeam] = useState('')
    const [players, setPlayers] = useState([])
    const params = useParams()

    useEffect(() => {
        fetch(`http://localhost:9292/teams/${params.id}`)
        .then((r) => r.json())
        .then((data) => {
            setTeam(data.team)
            setPlayers(data.players)
        })
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
                    <th>Status</th>
                </tr>
            </thead>
            <tbody>
                <Player players={players}/>
            </tbody>
        </table>
        )
    }

    return(
        <>
        <h1>{team}</h1>
        {playerTable()}
        </>
    )
}

export default Team;