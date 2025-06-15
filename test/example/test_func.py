from example.func import (
    add,
    sub,
)


def test_add() -> None:
    ret = 3
    assert add(2, 1) == ret


def test_sub() -> None:
    ret = 1
    assert sub(2, 1) == ret
