# First reaction method
***

Take a system with $N$ states and jump rates $\omega_{ij}$'s. The first index is the initial state and second is the final, with restrictions $i \neq j$ and the jump is not allowed if $\omega_{ij}=0$. Next, conpute the jump times from $i$ to all states $j=1,2,3,\cdots N,\quad i\neq j$ as,

$$
\begin{equation}
t_{ij} = - \frac{\textrm{ln} u}{\omega_{ij}},
\end{equation}
$$

 with $u$'s independent uniformaly distributed random numbers.
Finally the transition will occur for the smallest of these times.

As an example, the method can be used to generate the sequence for a 4-state system with states {A,B,C,D}. 
The transition probabilities are assumed randomly as shown in the table.

| |   A|    B|    C|    D|
|-|----|-----|-----|-----|
|A| 0.2|  0.3|  0.2|  0.3|
|B| 0.1|  0.5|  0.3|  0.1|
|C| 0.2|  0.1|  0.1|  0.6|
|D| 0.4|  0.2|  0.1|  0.3|

This system is then updated till 30 units of time and the following sequces are produced.

![sequences](https://user-images.githubusercontent.com/100057270/156272163-63b50d99-1775-4245-a4d6-172b2fb060ea.svg)
***
