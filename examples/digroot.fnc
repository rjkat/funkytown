﻿
                         ╓───╖
                         ║ ‰ ║
                         ╙─┬─╜
                ┌──────────┴────────┐           ╔══════════════════════════╗
       ┌────────┴────────┐    ┌─────┴────┐      ║  digital root            ║
       │                 │  ┌─┴─╖        │      ╟──────────────────────────╢
       │                 │  │ ~ ║        │      ║  ‰(n) = n < 0 ? ‰(~n) :  ║
       │                 │  ╘═╤═╝        │      ║         n < 10 ? n :     ║
       │  ╔════╗  ┌───╖  │  ┌─┴─╖        │      ║         ‰(‰p(0, n))      ║
       │  ║ 10 ╟──┤ < ╟──┘  │ ‰ ║        │      ╚══════════════════════════╝
       │  ╚════╝  ╘═╤═╝     ╘═╤═╝    ┌───┴───┐
       │          ┌─┴─╖     ┌─┴─╖  ┌─┴─╖     │
       └──────────┤ ? ╟─────┤ ? ╟──┤ > ║     │
                  ╘═╤═╝     ╘═╤═╝  ╘═╤═╝     │
                  ┌─┴─╖       │    ╔═╧═╗     │
                  │ ‰ ║            ║ 0 ║     │            ╔═══╗
                  ╘═╤═╝            ╚═══╝     │            ║   ║
           ╔═══╗  ┌─┴──╖                     │            ╚═╤═╝
           ║ 0 ╟──┤ ‰p ╟─────────────────────┘         ┌────┴────╖
           ╚═══╝  ╘════╝                               │ str→int ║
                                                       ╘════╤════╝
             ┌───────────────────────────┐                ┌─┴─╖
             │     ╓┬───╖                │                │ ‰ ║
             ├─────╫┘‰p ╟──┐             │                ╘═╤═╝
             │     ╙────╜  │             │             ┌────┴────╖
             │     ╔════╗  │             │             │ int→str ║
             │     ║ 10 ║  │             │             ╘════╤════╝
             │     ╚═╤══╝  │             │                  │
             │     ┌─┴──╖  │             │
             │  ┌──┤ ÷% ╟──┴────────┐    │
             │  │  ╘═╤══╝           │    │
             │  │    └───────┐      │    │
             │  │  ┌────╖  ┌─┴─╖    │    │    ╔═════════════════════════════╗
             │  └──┤ ‰p ╟──┤ + ║    │    │    ║  digital root (helper)      ║
             │     ╘═╤══╝  ╘═╤═╝  ┌─┴─╖  │    ╟─────────────────────────────╢
             │       │       └────┤ · ╟──┘    ║  ‰p(a, n) =                 ║
             │     ┌─┴─╖          ╘═╤═╝       ║      let (q, r) = n ÷% 10;  ║
             └─────┤ ? ╟────────────┘         ║      n ? ‰p(a + r, q) : a   ║
                   ╘═╤═╝                      ╚═════════════════════════════╝
                     │

