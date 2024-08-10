import './App.css'
import {useEffect, useState} from "react";
import {Link} from "react-router-dom";

function App() {
    const [data,setData] = useState({message:""});
    useEffect( () => {
        fetch(`/api/hello/`)
            .then(response => response.json())
            .then(data => setData(data))
    },[])
  return (
    <main>
        <h1>{data.message}</h1>
        <Link to={"/about"}>Go to about page</Link>
    </main>
  )
}

export default App
