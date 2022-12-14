  ╔══════════════════════════════════╗  ╔════════════════════════╗
  ║  Fibonacci (full integer range)  ║  ║  Lucas sequence        ║
  ╟──────────────────────────────────╢  ╟────────────────────────╢
  ║  Fibo(n) =                       ║  ║  Lucas(n) = Fibo(n−1)  ║
  ║      let f = fibo(0, 1, |n|);    ║  ║           + Fibo(n+1)  ║
  ║      (n ≥ 0) | (n & 1) ? f : ~f  ║  ╚════════════════════════╝
  ╚══════════════════════════════════╝          ╓───────╖
                 ╓──────╖                       ║ Lucas ║
                 ║ Fibo ║                       ╙───┬───╜
                 ╙──┬───╜                           │
        ┌───────────┴───────────┐       ╔═══╗ ┌───╖ │ ┌───╖  ╔═══╗
      ┌─┴─╖  ╔═══╗              │       ║ 1 ╟─┤ − ╟─┴─┤ + ╟──╢ 1 ║
      │ | ║  ║ 1 ║       ╔═══╗  │       ╚═══╝ ╘═╤═╝   ╘═╤═╝  ╚═══╝
      ╘═╤═╝  ╚═╤═╝   ┌───╢ 0 ║  │          ┌────┴─╖   ┌─┴────╖
        │  ┌───┴──╖  │   ╚═╤═╝  │          │ Fibo ║   │ Fibo ║
        └──┤ fibo ╟──┘   ┌─┴─╖  │          ╘════╤═╝   ╘═╤════╝
           ╘═══╤══╝  ┌───┤ < ║  │               │ ┌───╖ │
            ┌──┴──┐  │   ╘═╤═╝  │               └─┤ + ╟─┘
          ┌─┴─╖   │  │     ├────┘                 ╘═╤═╝
          │ ~ ║   │  └─┬───┤                        │
          ╘═╤═╝ ┌─┴─╖  │ ╔═╧═╗
            └───┤ ? ╟──┘ ║ 1 ║
                ╘═╤═╝    ╚═══╝
                  │

                       ╓┬─────╖
  ┌────────────────────╫┘fibo ╟──┐
  │                    ╙──┬───╜  │
  │  ╔═══╗  ┌───╖       ┌─┴─╖    │
  │  ║ 1 ╟──┤ − ╟───────┤ · ╟─┐  │    ╔═════════════════════════════╗
  │  ╚═══╝  ╘═╤═╝       ╘═╤═╝ │  │    ║  Fibonacci helper function  ║
  │         ┌─┴─╖  ┌───╖  │   │  │    ╟─────────────────────────────╢
  │       ┌─┤ · ╟──┤ + ╟──┴┐  │  │    ║  fibo(a, b, n) = n ?        ║
  │       │ ╘═╤═╝  ╘═╤═╝   │  ├──┘    ║      fibo(b, a+b, n−1) : a  ║
  │       │   │  ┌───┴──╖  │  │       ╚═════════════════════════════╝
  └───────┤   └──┤ fibo ╟──┘  │
          │      ╘═══╤══╝     │
          │        ┌─┴─╖      │
          └────────┤ ? ╟──────┘
                   ╘═╤═╝
                     │
