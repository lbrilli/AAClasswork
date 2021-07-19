import React from "react";

class Game extends React.Component {
    constructor (props) {
        this.state = {board:new Board()};
        super(props);
        this.updateGame = this.updateGame.bind(this);
    }

    updateGame() {

    }

    render(){
        return(
            <Board board={this.state.board} updateGame={this.updateGame}></Board>
        )
    }
}