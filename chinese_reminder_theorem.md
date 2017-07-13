---
layout: page
title:  Chinese Reminder Theorem
order: 18
---

First I'll go over some definitions that are relevant to the Chinese Reminder Theorem and content that will be covered in the future.

The fracional field of an integral domain R is defined as $$Frac(R) = \{(\frac{a}{b} : a, b \in R \backslash \{0\}\}$$ where $$(\frac{a}{b}) = (\frac{p}{q})$$ if and only if there is some $$x \in R \backslash \{0\}$$ such that $$xaq = xpb$$.

If $$(R_j)_{j \in J}$$ is a collection of rings, $$\prod_j R_j \{(a_j)_{j \in J}, a_k \in R_j\}$$ can be made into a ring by considering coordinate wise addition and multiplication: $$(a_i)_j +(b_j)_j = (a_j+b_j)_{j \in J}$$ (addition) $$(a_j)_j(b_j)_j = (a_j)\cdot b_{j_{j \in J}}$$ (multiplication).

Let $$(I_j)_{j \in J}$$ be a collection of ideals. 1) the $$I_j$$ are said to be comaximal/coprime if $$(\bigcup_j I_j) = R$$ ($$(\bigcup_j I_j)$$ is the ideal generated by the union of the $$I_j$$). 2) the $$I_j$$ are said to be pairwise comaximal if for all $$i \neq j, (I_i \cup I_j) = R$$. For example, $$n\mathbb{Z}, m\mathbb{Z}$$ are comaximal if and only if gcd(m,n) = 1.

Chinese reminder theorem: let R be a commutative unitary ring ($$1 \neq 0$$) and $$I_1,...,I_k$$ be pairwise comaximal ideals, then $$R/\cap_j I_j \cong \prod_j R/I_j$$

Proof: we proceed by induction on k.
For k = 2, Let $$\phi: R \rightarrow R/I_1 \times R/I_2$$ be a map defined by $$x \mapsto (\pi_1(x), \pi_2(x))$$ where $$\pi_i : R \rightarrow R/I_i$$. $$\phi(x+y) = (\pi_1(x+y), \pi_2(x+y)) =$$ $$(\pi_1(x)+\pi_1(y), \pi_2(x)+\pi_2(y)) = $$ $$(\pi_1(x), \pi_2(x)) + (\pi_1(y), \pi_2(y)) = $$ $$\phi(x) + \phi(y)$$. Since $$\phi(1) = (\pi_1(1), \pi_2(1)) = (1,1)$$ it follows that $$\phi$$ is a unitary ring homomorphism.
ker$$(\pi) = ker(\pi_1) \cap ker(\pi_2) = I_1 \cap I_2$$. $$I_1, I_2$$ are comaximal, by definition $$(I_1 \cup I_2) = R$$ $$\{ \sum a_i r_i : a_i \in I_1 \cup I_2, r_i \in R\} = $$ $$\{a_1+a_2: a_1 \in I_1, a_2 \in I_2\}$$. Then there exists $$a_i \in I_i$$ such that $$a_1+a_2 = 1$$. $$a_1 \mod  I_2 = 1$$, $$a_1 = 1 \mod  I_2$$, $$a_2 = 1 \mod  I_1$$. $$\phi(a_1) = (0,1), \phi(a_2) = (1,0)$$. Let $$x, y \in R$$ then $$\phi(ya_1+xa_2) = $$ $$ \phi(y)\phi(a_1)+\phi(x)\phi(a_2) = $$ $$(\pi_1(y), \pi_2(y))(0,1)+(\pi_1(x),\pi_2(x))(1,0) = $$ $$(0, \pi_2(y))+(\pi_1(x),0) = $$ $$(\pi_1(x), \pi_2(y))$$ hence $$\phi$$ is surjective. By the 1st isomorphism theorem $$K/I_1 \cap I_2 \cong R/I_1 \times R/I_2$$, $$x \mod  I_1 \cap I_2 \mapsto (x \mod I_i)_{i=1,2}$$
Assume case k. For k+1: we have $$I_1,...,I_k,I_{k+1}$$ pairwise comaximal ideals. Then for all $$i \leq k, I_i$$ and $$I_{k+1}$$ are comaximal, which means there exists an $$x_i \in I_i$$ such that $$x_i+y_i=1$$ where $$y_i \in I_{k+1}$$. Note that $$x_i+y_i \mod  I_{k+1} = x_i \mod  I_{k+1}$$ so $$1 = \prod x_i+y_i = \prod x_i (\in \bigcap_{i \leq k}) \mod  I_{k+1}$$ hence $$1 \in I_{k+1} + \bigcap_{i \leq k}I_i$$ so they are comaximal. It follows that $$R/\bigcap_{i \leq k+1}I_i \cong R/\bigcap_{i \leq k} I_i \times R/I_{k+1} \cong \prod_{i \leq k} R/I_i \times R/I_{k+1}$$, $$x \mapsto (x \mod  \cap I_i, x \mod  I_{k+1}) \mapsto (x \mod I_i) i \leq k+1$$.

Remark: $$\bigcap_{i \leq k} I_i = \prod_{i \leq k}I_i = \{\sum_{j}\prod_{i} a_{ij} : a_{ij} \in I_i \}$$