from example.func import (
    add,
    sub,
)


def test_add():
    assert add(2, 1) == 3


def test_sub():
    assert sub(2, 1) == 1
