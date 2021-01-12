import React from 'react'
import { useState } from "react";
const Home = () => {


  const submitInput = () =>{
    const [value, setValue] = useState("");
    console.log(value);
  }
 

        return(
      <div className="container bg-info bg-gradient my-5 text-center py-5">
        <h1>
          Tic Tac Toe Game
        </h1>
        <div className="d-flex px-2 justify-content-center flex-wrap my-5">
          <div className="border border-danger border-5 p-2 mx-2">
          <h2>Go to the Board</h2>
          <div className="d-flex px-2 justify-content-center">
          <p className="user-select-all mx-2" value={1} onChange={e => setValue(e.target.value)} onClick={submitInput}>Player 1</p>
          <p className="user-select-all mx-2" value={2} onChange={e => setValue(e.target.value)} onClick={submitInput}>Player 2 </p>
          </div>
          </div>  
        </div>
      </div>
    )
  
}

export default Home