#ifndef MCHESS_CHESSBOARD_H
#define MCHESS_CHESSBOARD_H

struct chessboard {
    char board[8][8];
};

extern struct chessboard *new_chessboard(void);

#endif