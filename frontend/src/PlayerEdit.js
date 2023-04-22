import React, { useEffect, useState } from "react";
import { useParams, useNavigate } from "react-router-dom";

function PlayerEdit(){
    const [player, setPlayer] = useState([])
    const [statuses, setStatuses] = useState([])
    const params = useParams()
    const navigate = useNavigate()
    const [firstName, setFirstName] = useState('')
    const [lastName, setLastName] = useState('')
    const [jerseyNumber, setJerseyNumber] = useState('')
    const [position, setPosition] = useState('')
    const [status, setStatus] = useState([])
    const [string, setString] = useState('')
    const [health, setHealth] = useState('')

    useEffect(() => {
        fetch(`http://localhost:9292/players/${params.id}`)
        .then((r) => r.json())
        .then((data) => {
            setPlayer(data)
            setFirstName(data.first_name)
            setLastName(data.last_name)
            setJerseyNumber(data.jersey_number)
            setPosition(data.position)
            console.log(data.status)
        })
        fetch(`http://localhost:9292/statuses`)
        .then((r) => r.json())
        .then((data) => {
            setStatuses(data)
            //console.log(data)
        })
    }, [])

    function handleFormSubmit(e){
        e.preventDefault()
        const statusArray = [string, health]
        setStatus(statusArray)
        alert("Edit complete!")
        fetch(`http://localhost:9292/players/${params.id}`, {
            method: "PATCH",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify({
                first_name: firstName,
                last_name: lastName,
                jersey_number: jerseyNumber,
                position: position
            }),
        })
        .then((r) => r.json())
        .then(navigate(-1))
    }

    return(
        <form onSubmit={handleFormSubmit}>
            <legend>player edit</legend>
            <label>First Name</label>
            <input type="text" value={firstName} placeholder={player.first_name} 
                onChange={e => setFirstName(e.target.value)}/>
            <label>Last Name</label>
            <input type="text" value={lastName} placeholder={player.last_name} 
                onChange={e => setLastName(e.target.value)}/><br></br>
            <label>Jersey Number</label>
            <input type="number" value={jerseyNumber} placeholder={player.jersey_number} 
                onChange={e => setJerseyNumber(e.target.value)}/>
            <label>Position</label>
            <select onChange={e => setPosition(e.target.value)}>
                <option>{player.position}</option>
                <option value="forward">forward</option>
                <option value="midfield">midfield</option>
                <option>defense</option>
                <option>goalkeeper</option>
            </select><br></br>
            <fieldset>
                <legend>Status</legend>
                <div>
                    <input type="radio" id="starter" name="status" value="starter" 
                        onChange={e => setString(e.target.value)} required/>
                    <label>Starter</label>
                </div>
                <div>
                    <input type="radio" id="back_up" name="status" value="back up" 
                        onChange={e => setString(e.target.value)} />
                    <label>Back up</label>
                </div>
            </fieldset>
            <fieldset>
                <legend>Health</legend>
                <div>
                    <input type="radio" id="healthy" name="health" value="healthy" 
                        onChange={e => setHealth(e.target.value)} required/>
                    <label>Healthy</label>
                </div>
                <div>
                    <input type="radio" id="injured" name="health" value="injured"
                        onChange={e => setHealth(e.target.value)} />
                    <label>Injured</label>
                </div>
            </fieldset>
            <input type="submit" value="Submit" />
            <input type="button" value="Cancel" onClick={e => navigate(-1)} />
        </form>
    )
}

export default PlayerEdit