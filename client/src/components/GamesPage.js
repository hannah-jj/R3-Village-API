import React, { Component } from 'react';
import { Link } from 'react-router-dom';

const GamesPage = () => {
  return(
		<div>
			<Link style={{ marginRight: '12px' }} to={'/matchGame'}>Reuse a toy</Link>
  			<Link style={{ marginRight: '12px' }} to={'/recycleGame'}>Recycle a toy</Link>
  			<Link style={{ marginRight: '12px' }} to={'/learnGame'}>Reduce pollution</Link>
  			<div className="containerEarth">
			    <div className="planet"></div>
			    <div className="rocket"></div>
			</div>
  		</div>
   )
	
}

export default GamesPage;
