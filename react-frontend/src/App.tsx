import './App.css'
import {useEffect, useState} from "react";

function App() {
    const [data,setData] = useState({});
    useEffect( () => {
        fetch(`http://localhost:8080`)
            .then(response => response.json())
            .then(data => setData(data))
    },[])
  return (
    <main>
        <h1>{data.message}</h1>
    </main>
  )
}

export default App
