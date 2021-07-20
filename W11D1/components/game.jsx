import React from "react";
import Board from './board';
import Tile from './tile';
import * as Minesweeper from '../minesweeper';

class Game extends React.Component {
    constructor (props) {
        super(props);
        this.state = {board: new Minesweeper.Board(5, 5)};
        this.updateGame = this.updateGame.bind(this);
        this.checkGameOver = this.checkGameOver.bind(this);
        this.renderModal = this.renderModal.bind(this);
    }

    updateGame(tile, flag) {
        if (flag) {
            tile.toggleFlag();
        } else {
            tile.explore();
        }

        this.setState({ board: this.state.board })
    }

    render() {
        let modal;
        if (this.checkGameOver()) {
            modal = this.renderModal(this.state.board.won());
        }

        return (
            <div>
                {modal}
                <Board board={this.state.board} updateGame={this.updateGame}></Board>
            </div>
        )
    }

    checkGameOver() {
        if (this.state.board.won() || this.state.board.lost()) {
            return true;
        }

        return false;
    }

    renderModal(won) {
        if (won) {
            return (
                <div className="modal">
                    Congratulations!
                </div>
            )
        } else {
            return (
                <div className="modal">
                    You Lost.
                </div>
            )
        }
    }
}

export default Game;