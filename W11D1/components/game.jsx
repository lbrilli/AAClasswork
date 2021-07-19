import React from "react";
import Board from './board';
import Tile from './tile';
import * as Minesweeper from '../minesweeper';

class Game extends React.Component {
    constructor (props) {
        super(props);
        this.state = {board: new Minesweeper.Board(5, 5)};
        this.updateGame = this.updateGame.bind(this);
    }

    updateGame() {

    }

    render() {
        return (
            <div>
                <Board board={this.state.board} updateGame={this.updateGame}></Board>
                <Tile></Tile>
            </div>
        )
    }
}

export default Game;